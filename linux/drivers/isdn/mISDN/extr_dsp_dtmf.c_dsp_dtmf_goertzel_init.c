
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char lastwhat; char lastdigit; scalar_t__ count; scalar_t__ size; } ;
struct dsp {TYPE_1__ dtmf; } ;



void dsp_dtmf_goertzel_init(struct dsp *dsp)
{
 dsp->dtmf.size = 0;
 dsp->dtmf.lastwhat = '\0';
 dsp->dtmf.lastdigit = '\0';
 dsp->dtmf.count = 0;
}
