
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct dce6_wm_params {int sclk; } ;
struct TYPE_7__ {void* full; } ;
typedef TYPE_1__ fixed20_12 ;


 void* dfixed_const (int) ;
 void* dfixed_div (TYPE_1__,TYPE_1__) ;
 void* dfixed_mul (TYPE_1__,TYPE_1__) ;
 int dfixed_trunc (TYPE_1__) ;

__attribute__((used)) static u32 dce_v6_0_data_return_bandwidth(struct dce6_wm_params *wm)
{

 fixed20_12 return_efficiency;
 fixed20_12 sclk, bandwidth;
 fixed20_12 a;

 a.full = dfixed_const(1000);
 sclk.full = dfixed_const(wm->sclk);
 sclk.full = dfixed_div(sclk, a);
 a.full = dfixed_const(10);
 return_efficiency.full = dfixed_const(8);
 return_efficiency.full = dfixed_div(return_efficiency, a);
 a.full = dfixed_const(32);
 bandwidth.full = dfixed_mul(a, sclk);
 bandwidth.full = dfixed_mul(bandwidth, return_efficiency);

 return dfixed_trunc(bandwidth);
}
