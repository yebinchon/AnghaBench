
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_sdma_state {int dummy; } ;
struct qib_pportdata {struct qib_sdma_state sdma_state; } ;


 int sdma_put (struct qib_sdma_state*) ;

__attribute__((used)) static void sdma_sw_tear_down(struct qib_pportdata *ppd)
{
 struct qib_sdma_state *ss = &ppd->sdma_state;


 sdma_put(ss);
}
