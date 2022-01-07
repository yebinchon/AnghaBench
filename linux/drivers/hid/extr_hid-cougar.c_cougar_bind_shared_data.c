
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dev; } ;
struct cougar_shared {int list; struct hid_device* dev; int kref; } ;
struct cougar {struct cougar_shared* shared; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct cougar_shared* cougar_get_shared_data (struct hid_device*) ;
 int cougar_remove_shared_data (struct cougar*) ;
 int cougar_udev_list ;
 int cougar_udev_list_lock ;
 int devm_add_action (int *,int (*) (struct cougar*),struct cougar*) ;
 int kref_init (int *) ;
 struct cougar_shared* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cougar_bind_shared_data(struct hid_device *hdev,
       struct cougar *cougar)
{
 struct cougar_shared *shared;
 int error = 0;

 mutex_lock(&cougar_udev_list_lock);

 shared = cougar_get_shared_data(hdev);
 if (!shared) {
  shared = kzalloc(sizeof(*shared), GFP_KERNEL);
  if (!shared) {
   error = -ENOMEM;
   goto out;
  }

  kref_init(&shared->kref);
  shared->dev = hdev;
  list_add_tail(&shared->list, &cougar_udev_list);
 }

 cougar->shared = shared;

 error = devm_add_action(&hdev->dev, cougar_remove_shared_data, cougar);
 if (error) {
  mutex_unlock(&cougar_udev_list_lock);
  cougar_remove_shared_data(cougar);
  return error;
 }

out:
 mutex_unlock(&cougar_udev_list_lock);
 return error;
}
