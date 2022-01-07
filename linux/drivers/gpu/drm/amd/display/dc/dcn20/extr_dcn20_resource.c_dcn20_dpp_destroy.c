
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;


 int TO_DCN20_DPP (struct dpp*) ;
 int kfree (int ) ;

void dcn20_dpp_destroy(struct dpp **dpp)
{
 kfree(TO_DCN20_DPP(*dpp));
 *dpp = ((void*)0);
}
