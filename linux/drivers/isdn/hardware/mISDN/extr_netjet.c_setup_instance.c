
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_9__ {int ctrl; } ;
struct TYPE_15__ {int Bprotocols; int bchannels; int channelmap; TYPE_1__ D; } ;
struct TYPE_12__ {TYPE_7__ dev; } ;
struct TYPE_14__ {TYPE_4__ dch; int * hwlock; int name; } ;
struct tiger_hw {int name; TYPE_5__* pdev; TYPE_6__ isac; TYPE_3__* bc; int lock; int list; } ;
struct TYPE_10__ {int nr; int list; int ctrl; int send; } ;
struct TYPE_16__ {int nr; struct tiger_hw* hw; TYPE_2__ ch; } ;
struct TYPE_13__ {int dev; } ;
struct TYPE_11__ {TYPE_8__ bch; } ;


 int Cards ;
 int ISDN_P_B_HDLC ;
 int ISDN_P_B_MASK ;
 int ISDN_P_B_RAW ;
 int MAX_DATA_MEM ;
 scalar_t__ MISDN_MAX_IDLEN ;
 int NJ_DMA_RXSIZE ;
 int _set_debug (struct tiger_hw*) ;
 int card_lock ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int mISDN_initbchannel (TYPE_8__*,int ,int) ;
 int mISDN_register_device (TYPE_7__*,int *,int ) ;
 int mISDNisac_init (TYPE_6__*,struct tiger_hw*) ;
 int nj_bctrl ;
 int nj_cnt ;
 int nj_dctrl ;
 int nj_init_card (struct tiger_hw*) ;
 int nj_l2l1B ;
 int nj_release (struct tiger_hw*) ;
 int nj_setup (struct tiger_hw*) ;
 int pr_notice (char*,int) ;
 int set_channelmap (int,int ) ;
 int snprintf (int ,scalar_t__,char*,int) ;
 int spin_lock_init (int *) ;
 int write_lock_irqsave (int *,int ) ;
 int write_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int
setup_instance(struct tiger_hw *card)
{
 int i, err;
 u_long flags;

 snprintf(card->name, MISDN_MAX_IDLEN - 1, "netjet.%d", nj_cnt + 1);
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
 card->isac.dch.dev.D.ctrl = nj_dctrl;
 for (i = 0; i < 2; i++) {
  card->bc[i].bch.nr = i + 1;
  set_channelmap(i + 1, card->isac.dch.dev.channelmap);
  mISDN_initbchannel(&card->bc[i].bch, MAX_DATA_MEM,
       NJ_DMA_RXSIZE >> 1);
  card->bc[i].bch.hw = card;
  card->bc[i].bch.ch.send = nj_l2l1B;
  card->bc[i].bch.ch.ctrl = nj_bctrl;
  card->bc[i].bch.ch.nr = i + 1;
  list_add(&card->bc[i].bch.ch.list,
    &card->isac.dch.dev.bchannels);
  card->bc[i].bch.hw = card;
 }
 err = nj_setup(card);
 if (err)
  goto error;
 err = mISDN_register_device(&card->isac.dch.dev, &card->pdev->dev,
        card->name);
 if (err)
  goto error;
 err = nj_init_card(card);
 if (!err) {
  nj_cnt++;
  pr_notice("Netjet %d cards installed\n", nj_cnt);
  return 0;
 }
error:
 nj_release(card);
 return err;
}
