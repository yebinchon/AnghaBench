
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum clock_source_id { ____Placeholder_clock_source_id } clock_source_id ;


 int BREAK_TO_DEBUGGER () ;




 int ENCODER_REFCLK_SRC_EXTCLK ;
 int ENCODER_REFCLK_SRC_INVALID ;
 int ENCODER_REFCLK_SRC_P1PLL ;
 int ENCODER_REFCLK_SRC_P2PLL ;

bool dal_cmd_table_helper_clock_source_id_to_ref_clk_src2(
 enum clock_source_id id,
 uint32_t *ref_clk_src_id)
{
 if (ref_clk_src_id == ((void*)0)) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 switch (id) {
 case 130:
  *ref_clk_src_id = ENCODER_REFCLK_SRC_P1PLL;
  return 1;
 case 129:
  *ref_clk_src_id = ENCODER_REFCLK_SRC_P2PLL;
  return 1;




 case 131:
  *ref_clk_src_id = ENCODER_REFCLK_SRC_EXTCLK;
  return 1;
 case 128:
  *ref_clk_src_id = ENCODER_REFCLK_SRC_INVALID;
  return 1;
 default:

  BREAK_TO_DEBUGGER();
  return 0;
 }
}
