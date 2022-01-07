
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_connector {int* encoder_ids; int dev; } ;


 struct drm_encoder* drm_encoder_find (int ,int *,int) ;

__attribute__((used)) static struct drm_encoder *ast_best_single_encoder(struct drm_connector *connector)
{
 int enc_id = connector->encoder_ids[0];

 if (enc_id)
  return drm_encoder_find(connector->dev, ((void*)0), enc_id);
 return ((void*)0);
}
