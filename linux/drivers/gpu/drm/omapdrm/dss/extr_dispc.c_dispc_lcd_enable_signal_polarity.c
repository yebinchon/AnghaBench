
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;


 int DISPC_CONTROL ;
 int FEAT_LCDENABLEPOL ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;
 int dispc_has_feature (struct dispc_device*,int ) ;

__attribute__((used)) static void dispc_lcd_enable_signal_polarity(struct dispc_device *dispc,
          bool act_high)
{
 if (!dispc_has_feature(dispc, FEAT_LCDENABLEPOL))
  return;

 REG_FLD_MOD(dispc, DISPC_CONTROL, act_high ? 1 : 0, 29, 29);
}
