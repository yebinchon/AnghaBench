
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_classport_info_context {int done; } ;


 int complete (int *) ;

__attribute__((used)) static void ib_classportinfo_cb(void *context)
{
 struct ib_classport_info_context *cb_ctx = context;

 complete(&cb_ctx->done);
}
