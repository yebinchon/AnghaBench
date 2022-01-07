
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_pixel_processor {int dummy; } ;


 int FROM_DCE11_OPP (struct output_pixel_processor*) ;
 int kfree (int ) ;

void dce110_opp_destroy(struct output_pixel_processor **opp)
{
 if (*opp)
  kfree(FROM_DCE11_OPP(*opp));
 *opp = ((void*)0);
}
