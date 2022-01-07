
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_mixer {int id; } ;
struct drm_minor {int debugfs_root; } ;
struct drm_info_list {struct sti_mixer* data; } ;


 int ARRAY_SIZE (struct drm_info_list*) ;
 int EINVAL ;


 int drm_debugfs_create_files (struct drm_info_list*,int,int ,struct drm_minor*) ;
 struct drm_info_list* mixer0_debugfs_files ;
 struct drm_info_list* mixer1_debugfs_files ;

int sti_mixer_debugfs_init(struct sti_mixer *mixer, struct drm_minor *minor)
{
 unsigned int i;
 struct drm_info_list *mixer_debugfs_files;
 int nb_files;

 switch (mixer->id) {
 case 128:
  mixer_debugfs_files = mixer0_debugfs_files;
  nb_files = ARRAY_SIZE(mixer0_debugfs_files);
  break;
 case 129:
  mixer_debugfs_files = mixer1_debugfs_files;
  nb_files = ARRAY_SIZE(mixer1_debugfs_files);
  break;
 default:
  return -EINVAL;
 }

 for (i = 0; i < nb_files; i++)
  mixer_debugfs_files[i].data = mixer;

 return drm_debugfs_create_files(mixer_debugfs_files,
     nb_files,
     minor->debugfs_root, minor);
}
