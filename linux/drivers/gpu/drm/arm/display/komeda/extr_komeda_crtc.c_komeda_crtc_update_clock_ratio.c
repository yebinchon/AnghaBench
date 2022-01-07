
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {unsigned long long crtc_clock; } ;
struct TYPE_4__ {TYPE_1__ adjusted_mode; int active; } ;
struct komeda_crtc_state {int clock_ratio; TYPE_2__ base; } ;


 int div64_u64 (int,int) ;
 int komeda_crtc_get_aclk (struct komeda_crtc_state*) ;

__attribute__((used)) static void komeda_crtc_update_clock_ratio(struct komeda_crtc_state *kcrtc_st)
{
 u64 pxlclk, aclk;

 if (!kcrtc_st->base.active) {
  kcrtc_st->clock_ratio = 0;
  return;
 }

 pxlclk = kcrtc_st->base.adjusted_mode.crtc_clock * 1000ULL;
 aclk = komeda_crtc_get_aclk(kcrtc_st);

 kcrtc_st->clock_ratio = div64_u64(aclk << 32, pxlclk);
}
