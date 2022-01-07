
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;


 int sysfs_notify_dirent (struct kernfs_node*) ;

__attribute__((used)) static inline void sysfs_notify_dirent_safe(struct kernfs_node *sd)
{
 if (sd)
  sysfs_notify_dirent(sd);
}
