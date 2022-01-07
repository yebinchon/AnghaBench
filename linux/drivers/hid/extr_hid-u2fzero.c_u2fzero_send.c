
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u2fzero_device {int lock; int buf_out; int hdev; } ;
struct u2f_hid_report {int dummy; } ;
struct u2f_hid_msg {int dummy; } ;


 int EMSGSIZE ;
 int hid_hw_output_report (int ,int ,int) ;
 int memcpy (int ,struct u2f_hid_report*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int u2fzero_send(struct u2fzero_device *dev, struct u2f_hid_report *req)
{
 int ret;

 mutex_lock(&dev->lock);

 memcpy(dev->buf_out, req, sizeof(struct u2f_hid_report));

 ret = hid_hw_output_report(dev->hdev, dev->buf_out,
       sizeof(struct u2f_hid_msg));

 mutex_unlock(&dev->lock);

 if (ret < 0)
  return ret;

 return ret == sizeof(struct u2f_hid_msg) ? 0 : -EMSGSIZE;
}
