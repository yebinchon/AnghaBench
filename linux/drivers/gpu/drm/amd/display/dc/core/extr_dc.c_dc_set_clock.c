
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* set_clock ) (struct dc*,int,int ,int ) ;} ;
struct dc {TYPE_1__ hwss; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
typedef enum dc_clock_type { ____Placeholder_dc_clock_type } dc_clock_type ;


 int DC_ERROR_UNEXPECTED ;
 int stub1 (struct dc*,int,int ,int ) ;

enum dc_status dc_set_clock(struct dc *dc, enum dc_clock_type clock_type, uint32_t clk_khz, uint32_t stepping)
{
 if (dc->hwss.set_clock)
  return dc->hwss.set_clock(dc, clock_type, clk_khz, stepping);
 return DC_ERROR_UNEXPECTED;
}
