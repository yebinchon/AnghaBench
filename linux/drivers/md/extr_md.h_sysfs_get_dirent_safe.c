
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;


 struct kernfs_node* sysfs_get_dirent (struct kernfs_node*,char*) ;

__attribute__((used)) static inline struct kernfs_node *sysfs_get_dirent_safe(struct kernfs_node *sd, char *name)
{
 if (sd)
  return sysfs_get_dirent(sd, name);
 return sd;
}
