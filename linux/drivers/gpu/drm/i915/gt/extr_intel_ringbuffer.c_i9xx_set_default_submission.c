
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int * unpark; int * park; int cancel_requests; int submit_request; } ;


 int cancel_requests ;
 int i9xx_submit_request ;

__attribute__((used)) static void i9xx_set_default_submission(struct intel_engine_cs *engine)
{
 engine->submit_request = i9xx_submit_request;
 engine->cancel_requests = cancel_requests;

 engine->park = ((void*)0);
 engine->unpark = ((void*)0);
}
