
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isar_hw {int version; TYPE_2__* ch; int hw; int (* ctrl ) (int ,int ,int ) ;int name; } ;
struct TYPE_3__ {int debug; int Flags; } ;
struct TYPE_4__ {TYPE_1__ bch; int ftimer; } ;


 int DEBUG_HW ;
 int EINVAL ;
 int FLG_INITIALIZED ;
 int HW_RESET_REQ ;
 int ISARVersion (struct isar_hw*) ;
 int ftimer_handler ;
 int pr_notice (char*,int ,int,int) ;
 int stub1 (int ,int ,int ) ;
 int test_and_set_bit (int ,int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int
init_isar(struct isar_hw *isar)
{
 int cnt = 3;

 while (cnt--) {
  isar->version = ISARVersion(isar);
  if (isar->ch[0].bch.debug & DEBUG_HW)
   pr_notice("%s: Testing version %d (%d time)\n",
      isar->name, isar->version, 3 - cnt);
  if (isar->version == 1)
   break;
  isar->ctrl(isar->hw, HW_RESET_REQ, 0);
 }
 if (isar->version != 1)
  return -EINVAL;
 timer_setup(&isar->ch[0].ftimer, ftimer_handler, 0);
 test_and_set_bit(FLG_INITIALIZED, &isar->ch[0].bch.Flags);
 timer_setup(&isar->ch[1].ftimer, ftimer_handler, 0);
 test_and_set_bit(FLG_INITIALIZED, &isar->ch[1].bch.Flags);
 return 0;
}
