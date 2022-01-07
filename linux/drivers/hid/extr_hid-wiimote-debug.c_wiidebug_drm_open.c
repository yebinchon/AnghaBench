
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int single_open (struct file*,int ,int ) ;
 int wiidebug_drm_show ;

__attribute__((used)) static int wiidebug_drm_open(struct inode *i, struct file *f)
{
 return single_open(f, wiidebug_drm_show, i->i_private);
}
