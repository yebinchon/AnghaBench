
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dsp_hwec ;
 int mISDN_dsp_element_register (int ) ;

int dsp_hwec_init(void)
{
 mISDN_dsp_element_register(dsp_hwec);

 return 0;
}
