
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct output_pixel_processor {int dummy; } ;
struct dce110_opp {int dummy; } ;


 int CONTROL ;
 int FMT420_MEM0_PWR_FORCE ;
 int FMT420_MEM0_SOURCE_SEL ;
 int FMT_CONTROL ;
 int FMT_SRC_SELECT ;
 int REG_GET (int ,int ,int *) ;
 int REG_UPDATE (int ,int ,int ) ;
 struct dce110_opp* TO_DCE110_OPP (struct output_pixel_processor*) ;

__attribute__((used)) static void program_formatter_420_memory(struct output_pixel_processor *opp)
{
 struct dce110_opp *opp110 = TO_DCE110_OPP(opp);
 uint32_t fmt_mem_cntl_value;




 REG_GET(CONTROL,
   FMT420_MEM0_SOURCE_SEL, &fmt_mem_cntl_value);

 REG_UPDATE(FMT_CONTROL,
   FMT_SRC_SELECT, fmt_mem_cntl_value);


 REG_UPDATE(CONTROL,
   FMT420_MEM0_PWR_FORCE, 0);
}
