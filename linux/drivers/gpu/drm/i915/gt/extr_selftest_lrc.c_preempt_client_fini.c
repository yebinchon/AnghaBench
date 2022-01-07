
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preempt_client {int ctx; int spin; } ;


 int igt_spinner_fini (int *) ;
 int kernel_context_close (int ) ;

__attribute__((used)) static void preempt_client_fini(struct preempt_client *c)
{
 igt_spinner_fini(&c->spin);
 kernel_context_close(c->ctx);
}
