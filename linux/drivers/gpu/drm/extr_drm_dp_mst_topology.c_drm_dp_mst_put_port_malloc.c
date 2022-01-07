
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_mst_port {int malloc_kref; } ;


 int DRM_DEBUG (char*,struct drm_dp_mst_port*,scalar_t__) ;
 int drm_dp_free_mst_port ;
 int kref_put (int *,int ) ;
 scalar_t__ kref_read (int *) ;

void
drm_dp_mst_put_port_malloc(struct drm_dp_mst_port *port)
{
 DRM_DEBUG("port %p (%d)\n", port, kref_read(&port->malloc_kref) - 1);
 kref_put(&port->malloc_kref, drm_dp_free_mst_port);
}
