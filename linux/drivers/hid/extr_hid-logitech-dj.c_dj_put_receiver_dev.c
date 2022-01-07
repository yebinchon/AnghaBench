
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
struct dj_receiver_dev {int kref; struct hid_device* hidpp; struct hid_device* keyboard; struct hid_device* mouse; } ;


 int dj_hdev_list_lock ;
 int dj_release_receiver_dev ;
 struct dj_receiver_dev* hid_get_drvdata (struct hid_device*) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dj_put_receiver_dev(struct hid_device *hdev)
{
 struct dj_receiver_dev *djrcv_dev = hid_get_drvdata(hdev);

 mutex_lock(&dj_hdev_list_lock);

 if (djrcv_dev->mouse == hdev)
  djrcv_dev->mouse = ((void*)0);
 if (djrcv_dev->keyboard == hdev)
  djrcv_dev->keyboard = ((void*)0);
 if (djrcv_dev->hidpp == hdev)
  djrcv_dev->hidpp = ((void*)0);

 kref_put(&djrcv_dev->kref, dj_release_receiver_dev);

 mutex_unlock(&dj_hdev_list_lock);
}
