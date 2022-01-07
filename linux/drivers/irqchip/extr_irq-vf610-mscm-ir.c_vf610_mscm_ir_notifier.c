
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;





 int NOTIFY_OK ;
 int mscm_ir_data ;
 int vf610_mscm_ir_restore (int ) ;
 int vf610_mscm_ir_save (int ) ;

__attribute__((used)) static int vf610_mscm_ir_notifier(struct notifier_block *self,
      unsigned long cmd, void *v)
{
 switch (cmd) {
 case 130:
  vf610_mscm_ir_save(mscm_ir_data);
  break;
 case 129:
 case 128:
  vf610_mscm_ir_restore(mscm_ir_data);
  break;
 }

 return NOTIFY_OK;
}
