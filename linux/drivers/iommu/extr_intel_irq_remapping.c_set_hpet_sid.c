
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct irte {int dummy; } ;
struct TYPE_2__ {scalar_t__ id; int bus; int devfn; scalar_t__ iommu; } ;


 int MAX_HPET_TBS ;
 int SQ_13_IGNORE_3 ;
 int SVT_VERIFY_SID_SQ ;
 int dmar_global_lock ;
 int down_read (int *) ;
 TYPE_1__* ir_hpet ;
 int pr_warn (char*,scalar_t__) ;
 int set_irte_sid (struct irte*,int ,int ,int) ;
 int up_read (int *) ;

__attribute__((used)) static int set_hpet_sid(struct irte *irte, u8 id)
{
 int i;
 u16 sid = 0;

 if (!irte)
  return -1;

 down_read(&dmar_global_lock);
 for (i = 0; i < MAX_HPET_TBS; i++) {
  if (ir_hpet[i].iommu && ir_hpet[i].id == id) {
   sid = (ir_hpet[i].bus << 8) | ir_hpet[i].devfn;
   break;
  }
 }
 up_read(&dmar_global_lock);

 if (sid == 0) {
  pr_warn("Failed to set source-id of HPET block (%d)\n", id);
  return -1;
 }






 set_irte_sid(irte, SVT_VERIFY_SID_SQ, SQ_13_IGNORE_3, sid);

 return 0;
}
