
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int sink_detected; int feature_complete; int * edid; int sink_type; } ;


 int SINK_NONE ;
 int kfree (int *) ;
 int sii8620_disable_hpd (struct sii8620*) ;

__attribute__((used)) static void sii8620_hpd_unplugged(struct sii8620 *ctx)
{
 sii8620_disable_hpd(ctx);
 ctx->sink_type = SINK_NONE;
 ctx->sink_detected = 0;
 ctx->feature_complete = 0;
 kfree(ctx->edid);
 ctx->edid = ((void*)0);
}
