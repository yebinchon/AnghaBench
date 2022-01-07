
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct edid {int dummy; } ;
struct drm_connector {TYPE_2__* dev; } ;
struct ast_private {scalar_t__ tx_chip_type; int dp501_maxclk; } ;
struct ast_connector {int base; TYPE_1__* i2c; } ;
struct TYPE_5__ {struct ast_private* dev_private; } ;
struct TYPE_4__ {int adapter; } ;


 scalar_t__ AST_TX_DP501 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ast_dp501_read_edid (TYPE_2__*,int *) ;
 int ast_get_dp501_max_clk (TYPE_2__*) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (int *,struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int *) ;
 int kfree (struct edid*) ;
 struct edid* kmalloc (int,int ) ;
 struct ast_connector* to_ast_connector (struct drm_connector*) ;

__attribute__((used)) static int ast_get_modes(struct drm_connector *connector)
{
 struct ast_connector *ast_connector = to_ast_connector(connector);
 struct ast_private *ast = connector->dev->dev_private;
 struct edid *edid;
 int ret;
 bool flags = 0;
 if (ast->tx_chip_type == AST_TX_DP501) {
  ast->dp501_maxclk = 0xff;
  edid = kmalloc(128, GFP_KERNEL);
  if (!edid)
   return -ENOMEM;

  flags = ast_dp501_read_edid(connector->dev, (u8 *)edid);
  if (flags)
   ast->dp501_maxclk = ast_get_dp501_max_clk(connector->dev);
  else
   kfree(edid);
 }
 if (!flags)
  edid = drm_get_edid(connector, &ast_connector->i2c->adapter);
 if (edid) {
  drm_connector_update_edid_property(&ast_connector->base, edid);
  ret = drm_add_edid_modes(connector, edid);
  kfree(edid);
  return ret;
 } else
  drm_connector_update_edid_property(&ast_connector->base, ((void*)0));
 return 0;
}
