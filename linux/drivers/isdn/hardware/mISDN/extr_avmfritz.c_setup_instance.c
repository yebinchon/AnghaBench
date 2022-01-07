
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_11__ {int ctrl; } ;
struct TYPE_16__ {int Bprotocols; int bchannels; int channelmap; TYPE_1__ D; } ;
struct TYPE_14__ {TYPE_7__ dev; } ;
struct TYPE_15__ {int (* release ) (TYPE_5__*) ;TYPE_4__ dch; int * hwlock; int name; } ;
struct fritzcard {scalar_t__ type; int list; TYPE_9__* bch; TYPE_5__ isac; int addr; int name; TYPE_3__* pdev; int lock; } ;
struct TYPE_12__ {int nr; int list; int ctrl; int send; } ;
struct TYPE_17__ {int nr; TYPE_2__ ch; struct fritzcard* hw; } ;
struct TYPE_13__ {int dev; } ;


 scalar_t__ AVM_FRITZ_PCIV2 ;
 int AVM_cnt ;
 int Cards ;
 unsigned short HDLC_FIFO_SIZE_V1 ;
 unsigned short HDLC_FIFO_SIZE_V2 ;
 int ISDN_P_B_HDLC ;
 int ISDN_P_B_MASK ;
 int ISDN_P_B_RAW ;
 int MAX_DATA_MEM ;
 scalar_t__ MISDN_MAX_IDLEN ;
 int _set_debug (struct fritzcard*) ;
 int avm_bctrl ;
 int avm_dctrl ;
 int avm_l2l1B ;
 int card_lock ;
 int init_card (struct fritzcard*) ;
 int kfree (struct fritzcard*) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mISDN_freebchannel (TYPE_9__*) ;
 int mISDN_initbchannel (TYPE_9__*,int ,unsigned short) ;
 int mISDN_register_device (TYPE_7__*,int *,int ) ;
 int mISDN_unregister_device (TYPE_7__*) ;
 int mISDNisac_init (TYPE_5__*,struct fritzcard*) ;
 int pr_notice (char*,int) ;
 int release_region (int ,int) ;
 int set_channelmap (int,int ) ;
 int setup_fritz (struct fritzcard*) ;
 int snprintf (int ,scalar_t__,char*,int) ;
 int spin_lock_init (int *) ;
 int stub1 (TYPE_5__*) ;
 int write_lock_irqsave (int *,int ) ;
 int write_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int
setup_instance(struct fritzcard *card)
{
 int i, err;
 unsigned short minsize;
 u_long flags;

 snprintf(card->name, MISDN_MAX_IDLEN - 1, "AVM.%d", AVM_cnt + 1);
 write_lock_irqsave(&card_lock, flags);
 list_add_tail(&card->list, &Cards);
 write_unlock_irqrestore(&card_lock, flags);

 _set_debug(card);
 card->isac.name = card->name;
 spin_lock_init(&card->lock);
 card->isac.hwlock = &card->lock;
 mISDNisac_init(&card->isac, card);

 card->isac.dch.dev.Bprotocols = (1 << (ISDN_P_B_RAW & ISDN_P_B_MASK)) |
  (1 << (ISDN_P_B_HDLC & ISDN_P_B_MASK));
 card->isac.dch.dev.D.ctrl = avm_dctrl;
 for (i = 0; i < 2; i++) {
  card->bch[i].nr = i + 1;
  set_channelmap(i + 1, card->isac.dch.dev.channelmap);
  if (AVM_FRITZ_PCIV2 == card->type)
   minsize = HDLC_FIFO_SIZE_V2;
  else
   minsize = HDLC_FIFO_SIZE_V1;
  mISDN_initbchannel(&card->bch[i], MAX_DATA_MEM, minsize);
  card->bch[i].hw = card;
  card->bch[i].ch.send = avm_l2l1B;
  card->bch[i].ch.ctrl = avm_bctrl;
  card->bch[i].ch.nr = i + 1;
  list_add(&card->bch[i].ch.list, &card->isac.dch.dev.bchannels);
 }
 err = setup_fritz(card);
 if (err)
  goto error;
 err = mISDN_register_device(&card->isac.dch.dev, &card->pdev->dev,
        card->name);
 if (err)
  goto error_reg;
 err = init_card(card);
 if (!err) {
  AVM_cnt++;
  pr_notice("AVM %d cards installed DEBUG\n", AVM_cnt);
  return 0;
 }
 mISDN_unregister_device(&card->isac.dch.dev);
error_reg:
 release_region(card->addr, 32);
error:
 card->isac.release(&card->isac);
 mISDN_freebchannel(&card->bch[1]);
 mISDN_freebchannel(&card->bch[0]);
 write_lock_irqsave(&card_lock, flags);
 list_del(&card->list);
 write_unlock_irqrestore(&card_lock, flags);
 kfree(card);
 return err;
}
