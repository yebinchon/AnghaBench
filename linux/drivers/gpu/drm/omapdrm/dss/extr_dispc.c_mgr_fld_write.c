
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dispc_reg_field {scalar_t__ reg; int low; int high; } ;
struct dispc_device {int control_lock; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
typedef enum mgr_reg_fields { ____Placeholder_mgr_reg_fields } mgr_reg_fields ;
struct TYPE_2__ {struct dispc_reg_field* reg_desc; } ;


 scalar_t__ DISPC_CONFIG ;
 scalar_t__ DISPC_CONTROL ;
 int REG_FLD_MOD (struct dispc_device*,scalar_t__,int,int ,int ) ;
 TYPE_1__* mgr_desc ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mgr_fld_write(struct dispc_device *dispc, enum omap_channel channel,
     enum mgr_reg_fields regfld, int val)
{
 const struct dispc_reg_field rfld = mgr_desc[channel].reg_desc[regfld];
 const bool need_lock = rfld.reg == DISPC_CONTROL || rfld.reg == DISPC_CONFIG;
 unsigned long flags;

 if (need_lock) {
  spin_lock_irqsave(&dispc->control_lock, flags);
  REG_FLD_MOD(dispc, rfld.reg, val, rfld.high, rfld.low);
  spin_unlock_irqrestore(&dispc->control_lock, flags);
 } else {
  REG_FLD_MOD(dispc, rfld.reg, val, rfld.high, rfld.low);
 }
}
