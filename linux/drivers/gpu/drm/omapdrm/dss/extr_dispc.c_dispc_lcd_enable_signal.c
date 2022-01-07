
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;


 int DISPC_CONTROL ;
 int FEAT_LCDENABLESIGNAL ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;
 int dispc_has_feature (struct dispc_device*,int ) ;

void dispc_lcd_enable_signal(struct dispc_device *dispc, bool enable)
{
 if (!dispc_has_feature(dispc, FEAT_LCDENABLESIGNAL))
  return;

 REG_FLD_MOD(dispc, DISPC_CONTROL, enable ? 1 : 0, 28, 28);
}
