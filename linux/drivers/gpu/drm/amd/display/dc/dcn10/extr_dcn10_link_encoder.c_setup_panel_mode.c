
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dcn10_link_encoder {int dummy; } ;
typedef enum dp_panel_mode { ____Placeholder_dp_panel_mode } dp_panel_mode ;


 int DP_DPHY_INTERNAL_CTRL ;


 int REG (int ) ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;

__attribute__((used)) static void setup_panel_mode(
 struct dcn10_link_encoder *enc10,
 enum dp_panel_mode panel_mode)
{
 uint32_t value;

 if (!REG(DP_DPHY_INTERNAL_CTRL))
  return;

 value = REG_READ(DP_DPHY_INTERNAL_CTRL);

 switch (panel_mode) {
 case 129:
  value = 0x1;
  break;
 case 128:
  value = 0x11;
  break;
 default:
  value = 0x0;
  break;
 }

 REG_WRITE(DP_DPHY_INTERNAL_CTRL, value);
}
