
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsp {scalar_t__ bf_enable; } ;



void
dsp_bf_cleanup(struct dsp *dsp)
{
 dsp->bf_enable = 0;
}
