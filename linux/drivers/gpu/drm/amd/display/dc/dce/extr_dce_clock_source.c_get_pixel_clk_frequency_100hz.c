
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce110_clk_src {int dummy; } ;
struct clock_source {scalar_t__ id; } ;


 scalar_t__ CLOCK_SOURCE_ID_DP_DTO ;
 int * PHASE ;
 unsigned int REG_READ (int ) ;
 struct dce110_clk_src* TO_DCE110_CLK_SRC (struct clock_source const*) ;

__attribute__((used)) static bool get_pixel_clk_frequency_100hz(
  const struct clock_source *clock_source,
  unsigned int inst,
  unsigned int *pixel_clk_khz)
{
 struct dce110_clk_src *clk_src = TO_DCE110_CLK_SRC(clock_source);
 unsigned int clock_hz = 0;

 if (clock_source->id == CLOCK_SOURCE_ID_DP_DTO) {
  clock_hz = REG_READ(PHASE[inst]);





  *pixel_clk_khz = clock_hz / 100;
  return 1;
 }

 return 0;
}
