
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_aux {int * ddc; } ;
struct aux_engine_dce110 {int dummy; } ;


 int AUX_ARB_CONTROL ;
 int AUX_SW_DONE_USING_AUX_REG ;
 struct aux_engine_dce110* FROM_AUX_ENGINE (struct dce_aux*) ;
 int REG_UPDATE (int ,int ,int) ;
 int dal_ddc_close (int *) ;

__attribute__((used)) static void release_engine(
 struct dce_aux *engine)
{
 struct aux_engine_dce110 *aux110 = FROM_AUX_ENGINE(engine);

 dal_ddc_close(engine->ddc);

 engine->ddc = ((void*)0);

 REG_UPDATE(AUX_ARB_CONTROL, AUX_SW_DONE_USING_AUX_REG, 1);
}
