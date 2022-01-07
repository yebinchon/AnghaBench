
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_pixel_processor {int dummy; } ;


 int TO_DCE_IPP (struct input_pixel_processor*) ;
 int kfree (int ) ;

void dce_ipp_destroy(struct input_pixel_processor **ipp)
{
 kfree(TO_DCE_IPP(*ipp));
 *ipp = ((void*)0);
}
