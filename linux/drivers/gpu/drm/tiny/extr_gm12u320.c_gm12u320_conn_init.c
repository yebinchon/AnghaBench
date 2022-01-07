
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gm12u320_device {int conn; int dev; } ;


 int DRM_MODE_CONNECTOR_VGA ;
 int drm_connector_helper_add (int *,int *) ;
 int drm_connector_init (int *,int *,int *,int ) ;
 int gm12u320_conn_funcs ;
 int gm12u320_conn_helper_funcs ;

__attribute__((used)) static int gm12u320_conn_init(struct gm12u320_device *gm12u320)
{
 drm_connector_helper_add(&gm12u320->conn, &gm12u320_conn_helper_funcs);
 return drm_connector_init(&gm12u320->dev, &gm12u320->conn,
      &gm12u320_conn_funcs, DRM_MODE_CONNECTOR_VGA);
}
