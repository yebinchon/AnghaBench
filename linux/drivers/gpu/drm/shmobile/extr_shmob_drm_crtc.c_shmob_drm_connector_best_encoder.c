
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmob_drm_connector {struct drm_encoder* encoder; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;


 struct shmob_drm_connector* to_shmob_connector (struct drm_connector*) ;

__attribute__((used)) static struct drm_encoder *
shmob_drm_connector_best_encoder(struct drm_connector *connector)
{
 struct shmob_drm_connector *scon = to_shmob_connector(connector);

 return scon->encoder;
}
