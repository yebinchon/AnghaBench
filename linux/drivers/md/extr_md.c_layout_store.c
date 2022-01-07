
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {unsigned int new_layout; unsigned int layout; scalar_t__ reshape_position; TYPE_1__* pers; scalar_t__ ro; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* check_reshape ) (struct mddev*) ;} ;


 int EBUSY ;
 int EROFS ;
 scalar_t__ MaxSector ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int mddev_lock (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;
 int stub1 (struct mddev*) ;

__attribute__((used)) static ssize_t
layout_store(struct mddev *mddev, const char *buf, size_t len)
{
 unsigned int n;
 int err;

 err = kstrtouint(buf, 10, &n);
 if (err < 0)
  return err;
 err = mddev_lock(mddev);
 if (err)
  return err;

 if (mddev->pers) {
  if (mddev->pers->check_reshape == ((void*)0))
   err = -EBUSY;
  else if (mddev->ro)
   err = -EROFS;
  else {
   mddev->new_layout = n;
   err = mddev->pers->check_reshape(mddev);
   if (err)
    mddev->new_layout = mddev->layout;
  }
 } else {
  mddev->new_layout = n;
  if (mddev->reshape_position == MaxSector)
   mddev->layout = n;
 }
 mddev_unlock(mddev);
 return err ?: len;
}
