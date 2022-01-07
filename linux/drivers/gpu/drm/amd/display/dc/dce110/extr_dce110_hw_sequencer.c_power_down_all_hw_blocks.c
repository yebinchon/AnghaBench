
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc {TYPE_2__* fbc_compressor; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* disable_fbc ) (TYPE_2__*) ;} ;


 int power_down_clock_sources (struct dc*) ;
 int power_down_controllers (struct dc*) ;
 int power_down_encoders (struct dc*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void power_down_all_hw_blocks(struct dc *dc)
{
 power_down_encoders(dc);

 power_down_controllers(dc);

 power_down_clock_sources(dc);

 if (dc->fbc_compressor)
  dc->fbc_compressor->funcs->disable_fbc(dc->fbc_compressor);
}
