
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transform {int dummy; } ;
struct dce_transform {int * filter_v_c; int * filter_h_c; int * filter_v; int * filter_h; } ;


 struct dce_transform* TO_DCE_TRANSFORM (struct transform*) ;

__attribute__((used)) static void dce110_xfmv_reset(struct transform *xfm)
{
 struct dce_transform *xfm_dce = TO_DCE_TRANSFORM(xfm);

 xfm_dce->filter_h = ((void*)0);
 xfm_dce->filter_v = ((void*)0);
 xfm_dce->filter_h_c = ((void*)0);
 xfm_dce->filter_v_c = ((void*)0);
}
