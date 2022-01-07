
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_aux {int dummy; } ;
struct aux_engine_dce110 {int dummy; } ;


 struct aux_engine_dce110* FROM_AUX_ENGINE (struct dce_aux*) ;
 int kfree (struct aux_engine_dce110*) ;

void dce110_engine_destroy(struct dce_aux **engine)
{

 struct aux_engine_dce110 *engine110 = FROM_AUX_ENGINE(*engine);

 kfree(engine110);
 *engine = ((void*)0);

}
