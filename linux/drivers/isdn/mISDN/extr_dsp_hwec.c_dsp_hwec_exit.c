
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dsp_hwec ;
 int mISDN_dsp_element_unregister (int ) ;

void dsp_hwec_exit(void)
{
 mISDN_dsp_element_unregister(dsp_hwec);
}
