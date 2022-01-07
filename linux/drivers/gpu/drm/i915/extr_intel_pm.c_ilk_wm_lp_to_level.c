
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_pipe_wm {TYPE_1__* wm; } ;
struct TYPE_2__ {scalar_t__ enable; } ;



__attribute__((used)) static int ilk_wm_lp_to_level(int wm_lp, const struct intel_pipe_wm *pipe_wm)
{

 return wm_lp + (wm_lp >= 2 && pipe_wm->wm[4].enable);
}
