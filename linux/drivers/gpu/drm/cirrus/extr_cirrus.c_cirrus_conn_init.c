
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cirrus_device {int conn; int dev; } ;


 int DRM_MODE_CONNECTOR_VGA ;
 int cirrus_conn_funcs ;
 int cirrus_conn_helper_funcs ;
 int drm_connector_helper_add (int *,int *) ;
 int drm_connector_init (int *,int *,int *,int ) ;

__attribute__((used)) static int cirrus_conn_init(struct cirrus_device *cirrus)
{
 drm_connector_helper_add(&cirrus->conn, &cirrus_conn_helper_funcs);
 return drm_connector_init(&cirrus->dev, &cirrus->conn,
      &cirrus_conn_funcs, DRM_MODE_CONNECTOR_VGA);

}
