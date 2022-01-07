
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_factory {int dummy; } ;
struct dc_context {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int kfree (struct hw_factory*) ;

void dal_hw_factory_destroy(
 struct dc_context *ctx,
 struct hw_factory **factory)
{
 if (!factory || !*factory) {
  BREAK_TO_DEBUGGER();
  return;
 }

 kfree(*factory);

 *factory = ((void*)0);
}
