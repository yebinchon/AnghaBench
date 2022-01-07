
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {void* full; } ;
struct dce6_wm_params {int active_time; int blank_time; int bytes_per_pixel; int src_width; TYPE_1__ vsc; } ;
typedef TYPE_1__ fixed20_12 ;


 void* dfixed_const (int) ;
 void* dfixed_div (TYPE_1__,TYPE_1__) ;
 void* dfixed_mul (TYPE_1__,TYPE_1__) ;
 int dfixed_trunc (TYPE_1__) ;

__attribute__((used)) static u32 dce_v6_0_average_bandwidth(struct dce6_wm_params *wm)
{




 fixed20_12 bpp;
 fixed20_12 line_time;
 fixed20_12 src_width;
 fixed20_12 bandwidth;
 fixed20_12 a;

 a.full = dfixed_const(1000);
 line_time.full = dfixed_const(wm->active_time + wm->blank_time);
 line_time.full = dfixed_div(line_time, a);
 bpp.full = dfixed_const(wm->bytes_per_pixel);
 src_width.full = dfixed_const(wm->src_width);
 bandwidth.full = dfixed_mul(src_width, bpp);
 bandwidth.full = dfixed_mul(bandwidth, wm->vsc);
 bandwidth.full = dfixed_div(bandwidth, line_time);

 return dfixed_trunc(bandwidth);
}
