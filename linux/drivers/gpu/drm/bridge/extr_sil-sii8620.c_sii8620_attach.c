
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int dummy; } ;
struct drm_bridge {int dummy; } ;


 struct sii8620* bridge_to_sii8620 (struct drm_bridge*) ;
 int sii8620_clear_error (struct sii8620*) ;
 int sii8620_init_rcp_input_dev (struct sii8620*) ;

__attribute__((used)) static int sii8620_attach(struct drm_bridge *bridge)
{
 struct sii8620 *ctx = bridge_to_sii8620(bridge);

 sii8620_init_rcp_input_dev(ctx);

 return sii8620_clear_error(ctx);
}
