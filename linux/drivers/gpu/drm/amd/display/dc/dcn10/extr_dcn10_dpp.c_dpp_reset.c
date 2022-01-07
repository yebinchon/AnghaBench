
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn10_dpp {int pwl_data; int scl_data; int * filter_v; int * filter_h; int * filter_v_c; int * filter_h_c; } ;


 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;
 int memset (int *,int ,int) ;

void dpp_reset(struct dpp *dpp_base)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);

 dpp->filter_h_c = ((void*)0);
 dpp->filter_v_c = ((void*)0);
 dpp->filter_h = ((void*)0);
 dpp->filter_v = ((void*)0);

 memset(&dpp->scl_data, 0, sizeof(dpp->scl_data));
 memset(&dpp->pwl_data, 0, sizeof(dpp->pwl_data));
}
