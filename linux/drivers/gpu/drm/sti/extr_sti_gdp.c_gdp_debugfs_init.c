
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int desc; } ;
struct sti_gdp {TYPE_1__ plane; } ;
struct drm_minor {int debugfs_root; } ;
struct drm_info_list {struct sti_gdp* data; } ;


 int ARRAY_SIZE (struct drm_info_list*) ;
 int EINVAL ;




 int drm_debugfs_create_files (struct drm_info_list*,int,int ,struct drm_minor*) ;
 struct drm_info_list* gdp0_debugfs_files ;
 struct drm_info_list* gdp1_debugfs_files ;
 struct drm_info_list* gdp2_debugfs_files ;
 struct drm_info_list* gdp3_debugfs_files ;

__attribute__((used)) static int gdp_debugfs_init(struct sti_gdp *gdp, struct drm_minor *minor)
{
 unsigned int i;
 struct drm_info_list *gdp_debugfs_files;
 int nb_files;

 switch (gdp->plane.desc) {
 case 131:
  gdp_debugfs_files = gdp0_debugfs_files;
  nb_files = ARRAY_SIZE(gdp0_debugfs_files);
  break;
 case 130:
  gdp_debugfs_files = gdp1_debugfs_files;
  nb_files = ARRAY_SIZE(gdp1_debugfs_files);
  break;
 case 129:
  gdp_debugfs_files = gdp2_debugfs_files;
  nb_files = ARRAY_SIZE(gdp2_debugfs_files);
  break;
 case 128:
  gdp_debugfs_files = gdp3_debugfs_files;
  nb_files = ARRAY_SIZE(gdp3_debugfs_files);
  break;
 default:
  return -EINVAL;
 }

 for (i = 0; i < nb_files; i++)
  gdp_debugfs_files[i].data = gdp;

 return drm_debugfs_create_files(gdp_debugfs_files,
     nb_files,
     minor->debugfs_root, minor);
}
