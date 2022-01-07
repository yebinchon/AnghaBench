
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_log_buffer_ctx {int dummy; } ;
struct dc_context {int dummy; } ;


 int dm_dtn_log_append_v (struct dc_context*,struct dc_log_buffer_ctx*,char*,char const*) ;
 int pr_info (char*,char const*) ;

void dm_dtn_log_end(struct dc_context *ctx,
 struct dc_log_buffer_ctx *log_ctx)
{
 static const char msg[] = "[dtn end]\n";

 if (!log_ctx) {
  pr_info("%s", msg);
  return;
 }

 dm_dtn_log_append_v(ctx, log_ctx, "%s", msg);
}
