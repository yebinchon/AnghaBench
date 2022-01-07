
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmob_drm_connector {int dummy; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 int shmob_drm_backlight_exit (struct shmob_drm_connector*) ;
 struct shmob_drm_connector* to_shmob_connector (struct drm_connector*) ;

__attribute__((used)) static void shmob_drm_connector_destroy(struct drm_connector *connector)
{
 struct shmob_drm_connector *scon = to_shmob_connector(connector);

 shmob_drm_backlight_exit(scon);
 drm_connector_unregister(connector);
 drm_connector_cleanup(connector);
}
