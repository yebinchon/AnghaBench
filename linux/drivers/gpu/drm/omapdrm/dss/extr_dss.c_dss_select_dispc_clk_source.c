
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dss_device {int dispc_clk_source; TYPE_1__* feat; } ;
typedef enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;
struct TYPE_4__ {int end; int start; } ;
struct TYPE_3__ {TYPE_2__ dispc_clk_switch; scalar_t__ has_lcd_clk_src; } ;


 int BUG () ;



 int DSS_CONTROL ;
 int REG_FLD_MOD (struct dss_device*,int ,int,int ,int ) ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static void dss_select_dispc_clk_source(struct dss_device *dss,
     enum dss_clk_source clk_src)
{
 int b;





 if (WARN_ON(dss->feat->has_lcd_clk_src && clk_src != 130))
  return;

 switch (clk_src) {
 case 130:
  b = 0;
  break;
 case 129:
  b = 1;
  break;
 case 128:
  b = 2;
  break;
 default:
  BUG();
  return;
 }

 REG_FLD_MOD(dss, DSS_CONTROL, b,
      dss->feat->dispc_clk_switch.start,
      dss->feat->dispc_clk_switch.end);

 dss->dispc_clk_source = clk_src;
}
