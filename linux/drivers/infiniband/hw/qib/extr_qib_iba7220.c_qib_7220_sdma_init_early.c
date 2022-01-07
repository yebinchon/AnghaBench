
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_state_action; } ;
struct qib_pportdata {TYPE_1__ sdma_state; } ;


 int sdma_7220_action_table ;

__attribute__((used)) static void qib_7220_sdma_init_early(struct qib_pportdata *ppd)
{
 ppd->sdma_state.set_state_action = sdma_7220_action_table;
}
