
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_clock_config {int dummy; } ;
struct TYPE_2__ {int (* get_clock ) (struct dc*,int,struct dc_clock_config*) ;} ;
struct dc {TYPE_1__ hwss; } ;
typedef enum dc_clock_type { ____Placeholder_dc_clock_type } dc_clock_type ;


 int stub1 (struct dc*,int,struct dc_clock_config*) ;

void dc_get_clock(struct dc *dc, enum dc_clock_type clock_type, struct dc_clock_config *clock_cfg)
{
 if (dc->hwss.get_clock)
  dc->hwss.get_clock(dc, clock_type, clock_cfg);
}
