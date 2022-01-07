
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_pixel_processor {int dummy; } ;


 int TO_DCN10_IPP (struct input_pixel_processor*) ;
 int kfree (int ) ;

__attribute__((used)) static void dcn10_ipp_destroy(struct input_pixel_processor **ipp)
{
 kfree(TO_DCN10_IPP(*ipp));
 *ipp = ((void*)0);
}
