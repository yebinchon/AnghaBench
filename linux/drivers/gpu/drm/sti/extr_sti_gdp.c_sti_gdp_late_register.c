
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_plane {int dummy; } ;
struct sti_gdp {int dummy; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct TYPE_2__ {int primary; } ;


 int gdp_debugfs_init (struct sti_gdp*,int ) ;
 struct sti_gdp* to_sti_gdp (struct sti_plane*) ;
 struct sti_plane* to_sti_plane (struct drm_plane*) ;

__attribute__((used)) static int sti_gdp_late_register(struct drm_plane *drm_plane)
{
 struct sti_plane *plane = to_sti_plane(drm_plane);
 struct sti_gdp *gdp = to_sti_gdp(plane);

 return gdp_debugfs_init(gdp, drm_plane->dev->primary);
}
