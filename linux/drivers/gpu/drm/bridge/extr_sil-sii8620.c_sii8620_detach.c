
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int rc_dev; } ;
struct drm_bridge {int dummy; } ;


 struct sii8620* bridge_to_sii8620 (struct drm_bridge*) ;
 int rc_unregister_device (int ) ;

__attribute__((used)) static void sii8620_detach(struct drm_bridge *bridge)
{
 struct sii8620 *ctx = bridge_to_sii8620(bridge);

 rc_unregister_device(ctx->rc_dev);
}
