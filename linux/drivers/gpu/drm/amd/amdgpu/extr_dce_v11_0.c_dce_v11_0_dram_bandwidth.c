
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct dce10_wm_params {int yclk; int dram_channels; } ;
struct TYPE_7__ {void* full; } ;
typedef TYPE_1__ fixed20_12 ;


 void* dfixed_const (int) ;
 void* dfixed_div (TYPE_1__,TYPE_1__) ;
 void* dfixed_mul (TYPE_1__,TYPE_1__) ;
 int dfixed_trunc (TYPE_1__) ;

__attribute__((used)) static u32 dce_v11_0_dram_bandwidth(struct dce10_wm_params *wm)
{

 fixed20_12 dram_efficiency;
 fixed20_12 yclk, dram_channels, bandwidth;
 fixed20_12 a;

 a.full = dfixed_const(1000);
 yclk.full = dfixed_const(wm->yclk);
 yclk.full = dfixed_div(yclk, a);
 dram_channels.full = dfixed_const(wm->dram_channels * 4);
 a.full = dfixed_const(10);
 dram_efficiency.full = dfixed_const(7);
 dram_efficiency.full = dfixed_div(dram_efficiency, a);
 bandwidth.full = dfixed_mul(dram_channels, yclk);
 bandwidth.full = dfixed_mul(bandwidth, dram_efficiency);

 return dfixed_trunc(bandwidth);
}
