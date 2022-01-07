
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_connector {int * encoder_ids; int dev; } ;


 int WARN_ON (int ) ;
 struct drm_encoder* drm_encoder_find (int ,int *,int ) ;

__attribute__((used)) static struct drm_encoder *
pick_single_encoder_for_connector(struct drm_connector *connector)
{
 WARN_ON(connector->encoder_ids[1]);
 return drm_encoder_find(connector->dev, ((void*)0), connector->encoder_ids[0]);
}
