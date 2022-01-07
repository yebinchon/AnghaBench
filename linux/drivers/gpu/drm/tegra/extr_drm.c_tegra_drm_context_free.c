
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_drm_context {TYPE_2__* client; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* close_channel ) (struct tegra_drm_context*) ;} ;


 int kfree (struct tegra_drm_context*) ;
 int stub1 (struct tegra_drm_context*) ;

__attribute__((used)) static void tegra_drm_context_free(struct tegra_drm_context *context)
{
 context->client->ops->close_channel(context);
 kfree(context);
}
