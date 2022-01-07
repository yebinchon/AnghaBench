
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int i915_hpd_storm_ctl_show ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int i915_hpd_storm_ctl_open(struct inode *inode, struct file *file)
{
 return single_open(file, i915_hpd_storm_ctl_show, inode->i_private);
}
