
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_crtc {TYPE_1__* dev; } ;
struct dpll_info {unsigned int n; unsigned int m; unsigned int fdpll; unsigned long output; } ;
struct TYPE_2__ {int dev; } ;


 unsigned long abs (long) ;
 int dev_dbg (int ,char*,unsigned long,unsigned int,unsigned int,unsigned int,unsigned long) ;

__attribute__((used)) static void rcar_du_dpll_divider(struct rcar_du_crtc *rcrtc,
     struct dpll_info *dpll,
     unsigned long input,
     unsigned long target)
{
 unsigned long best_diff = (unsigned long)-1;
 unsigned long diff;
 unsigned int fdpll;
 unsigned int m;
 unsigned int n;
 for (m = 0; m < 4; m++) {
  for (n = 119; n > 38; n--) {
   unsigned long fout = input * (n + 1) / (m + 1);

   if (fout < 1000 || fout > 2048 * 1000 * 1000U)
    continue;

   for (fdpll = 1; fdpll < 32; fdpll++) {
    unsigned long output;

    output = fout / (fdpll + 1);
    if (output >= 400 * 1000 * 1000)
     continue;

    diff = abs((long)output - (long)target);
    if (best_diff > diff) {
     best_diff = diff;
     dpll->n = n;
     dpll->m = m;
     dpll->fdpll = fdpll;
     dpll->output = output;
    }

    if (diff == 0)
     goto done;
   }
  }
 }

done:
 dev_dbg(rcrtc->dev->dev,
  "output:%u, fdpll:%u, n:%u, m:%u, diff:%lu\n",
   dpll->output, dpll->fdpll, dpll->n, dpll->m, best_diff);
}
