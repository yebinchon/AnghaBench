
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_crtc {scalar_t__ pipe; TYPE_1__ base; } ;


 scalar_t__ HAS_IPS (int ) ;
 scalar_t__ PIPE_A ;
 int to_i915 (int ) ;

__attribute__((used)) static bool hsw_crtc_supports_ips(struct intel_crtc *crtc)
{
 return HAS_IPS(to_i915(crtc->base.dev)) && crtc->pipe == PIPE_A;
}
