
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_mst_port {int malloc_kref; } ;


 int DRM_DEBUG (char*,struct drm_dp_mst_port*,int ) ;
 int kref_get (int *) ;
 int kref_read (int *) ;

void
drm_dp_mst_get_port_malloc(struct drm_dp_mst_port *port)
{
 kref_get(&port->malloc_kref);
 DRM_DEBUG("port %p (%d)\n", port, kref_read(&port->malloc_kref));
}
