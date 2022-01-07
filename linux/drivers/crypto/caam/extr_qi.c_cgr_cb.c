
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_portal {int dummy; } ;
struct qman_cgr {int dummy; } ;


 int caam_congested ;
 int pr_debug_ratelimited (char*) ;
 int times_congested ;

__attribute__((used)) static void cgr_cb(struct qman_portal *qm, struct qman_cgr *cgr, int congested)
{
 caam_congested = congested;

 if (congested) {



  pr_debug_ratelimited("CAAM entered congestion\n");

 } else {
  pr_debug_ratelimited("CAAM exited congestion\n");
 }
}
