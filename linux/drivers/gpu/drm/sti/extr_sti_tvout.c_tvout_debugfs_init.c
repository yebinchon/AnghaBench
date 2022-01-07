
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sti_tvout {int dummy; } ;
struct drm_minor {int debugfs_root; } ;
struct TYPE_4__ {struct sti_tvout* data; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int drm_debugfs_create_files (TYPE_1__*,unsigned int,int ,struct drm_minor*) ;
 TYPE_1__* tvout_debugfs_files ;

__attribute__((used)) static int tvout_debugfs_init(struct sti_tvout *tvout, struct drm_minor *minor)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(tvout_debugfs_files); i++)
  tvout_debugfs_files[i].data = tvout;

 return drm_debugfs_create_files(tvout_debugfs_files,
     ARRAY_SIZE(tvout_debugfs_files),
     minor->debugfs_root, minor);
}
