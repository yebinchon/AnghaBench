
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_14__ {scalar_t__ Bprotocols; } ;
struct TYPE_11__ {TYPE_7__ dev; } ;
struct TYPE_12__ {TYPE_3__ dch; int * hwlock; int name; } ;
struct TYPE_13__ {int (* release ) (TYPE_5__*) ;TYPE_4__ isac; void* ctrl; int * hwlock; int owner; int name; } ;
struct inf_hw {int list; TYPE_5__ ipac; int name; TYPE_2__* pdev; int lock; TYPE_1__* ci; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {char* name; } ;


 int Cards ;
 scalar_t__ MISDN_MAX_IDLEN ;
 int THIS_MODULE ;
 int _set_debug (struct inf_hw*) ;
 int card_lock ;
 int inf_cnt ;
 int inf_ctrl ;
 int init_irq (struct inf_hw*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mISDN_register_device (TYPE_7__*,int *,int ) ;
 int mISDN_unregister_device (TYPE_7__*) ;
 scalar_t__ mISDNipac_init (TYPE_5__*,struct inf_hw*) ;
 int pr_notice (char*,int) ;
 int release_io (struct inf_hw*) ;
 int setup_io (struct inf_hw*) ;
 int snprintf (int ,scalar_t__,char*,char*,int) ;
 int spin_lock_init (int *) ;
 int stub1 (TYPE_5__*) ;
 int write_lock_irqsave (int *,int ) ;
 int write_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int
setup_instance(struct inf_hw *card)
{
 int err;
 ulong flags;

 snprintf(card->name, MISDN_MAX_IDLEN - 1, "%s.%d", card->ci->name,
   inf_cnt + 1);
 write_lock_irqsave(&card_lock, flags);
 list_add_tail(&card->list, &Cards);
 write_unlock_irqrestore(&card_lock, flags);

 _set_debug(card);
 card->ipac.isac.name = card->name;
 card->ipac.name = card->name;
 card->ipac.owner = THIS_MODULE;
 spin_lock_init(&card->lock);
 card->ipac.isac.hwlock = &card->lock;
 card->ipac.hwlock = &card->lock;
 card->ipac.ctrl = (void *)&inf_ctrl;

 err = setup_io(card);
 if (err)
  goto error_setup;

 card->ipac.isac.dch.dev.Bprotocols =
  mISDNipac_init(&card->ipac, card);

 if (card->ipac.isac.dch.dev.Bprotocols == 0)
  goto error_setup;

 err = mISDN_register_device(&card->ipac.isac.dch.dev,
        &card->pdev->dev, card->name);
 if (err)
  goto error;

 err = init_irq(card);
 if (!err) {
  inf_cnt++;
  pr_notice("Infineon %d cards installed\n", inf_cnt);
  return 0;
 }
 mISDN_unregister_device(&card->ipac.isac.dch.dev);
error:
 card->ipac.release(&card->ipac);
error_setup:
 release_io(card);
 write_lock_irqsave(&card_lock, flags);
 list_del(&card->list);
 write_unlock_irqrestore(&card_lock, flags);
 return err;
}
