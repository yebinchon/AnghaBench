
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_plane {int dummy; } ;
struct sti_hqvdp {int dummy; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct TYPE_2__ {int primary; } ;


 int hqvdp_debugfs_init (struct sti_hqvdp*,int ) ;
 struct sti_hqvdp* to_sti_hqvdp (struct sti_plane*) ;
 struct sti_plane* to_sti_plane (struct drm_plane*) ;

__attribute__((used)) static int sti_hqvdp_late_register(struct drm_plane *drm_plane)
{
 struct sti_plane *plane = to_sti_plane(drm_plane);
 struct sti_hqvdp *hqvdp = to_sti_hqvdp(plane);

 return hqvdp_debugfs_init(hqvdp, drm_plane->dev->primary);
}
