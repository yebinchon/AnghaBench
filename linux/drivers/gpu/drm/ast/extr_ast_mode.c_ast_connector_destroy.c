
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;
struct ast_connector {int i2c; } ;


 int ast_i2c_destroy (int ) ;
 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 int kfree (struct drm_connector*) ;
 struct ast_connector* to_ast_connector (struct drm_connector*) ;

__attribute__((used)) static void ast_connector_destroy(struct drm_connector *connector)
{
 struct ast_connector *ast_connector = to_ast_connector(connector);
 ast_i2c_destroy(ast_connector->i2c);
 drm_connector_unregister(connector);
 drm_connector_cleanup(connector);
 kfree(connector);
}
