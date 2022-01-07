
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sti_cursor {int dummy; } ;
struct drm_minor {int debugfs_root; } ;
struct TYPE_4__ {struct sti_cursor* data; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* cursor_debugfs_files ;
 int drm_debugfs_create_files (TYPE_1__*,unsigned int,int ,struct drm_minor*) ;

__attribute__((used)) static int cursor_debugfs_init(struct sti_cursor *cursor,
          struct drm_minor *minor)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(cursor_debugfs_files); i++)
  cursor_debugfs_files[i].data = cursor;

 return drm_debugfs_create_files(cursor_debugfs_files,
     ARRAY_SIZE(cursor_debugfs_files),
     minor->debugfs_root, minor);
}
