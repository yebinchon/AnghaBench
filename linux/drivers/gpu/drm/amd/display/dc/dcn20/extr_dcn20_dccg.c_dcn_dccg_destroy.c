
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcn_dccg {int dummy; } ;
struct dccg {int dummy; } ;


 struct dcn_dccg* TO_DCN_DCCG (struct dccg*) ;
 int kfree (struct dcn_dccg*) ;

void dcn_dccg_destroy(struct dccg **dccg)
{
 struct dcn_dccg *dccg_dcn = TO_DCN_DCCG(*dccg);

 kfree(dccg_dcn);
 *dccg = ((void*)0);
}
