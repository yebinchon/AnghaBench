
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_pixel_processor {int dummy; } ;


 int TO_DCN10_OPP (struct output_pixel_processor*) ;
 int kfree (int ) ;

void opp1_destroy(struct output_pixel_processor **opp)
{
 kfree(TO_DCN10_OPP(*opp));
 *opp = ((void*)0);
}
