
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int vb2_queue; } ;
struct rtl2832_sdr_dev {int udev; } ;


 int ENODEV ;
 struct rtl2832_sdr_dev* vb2_get_drv_priv (int ) ;

__attribute__((used)) static int rtl2832_sdr_buf_prepare(struct vb2_buffer *vb)
{
 struct rtl2832_sdr_dev *dev = vb2_get_drv_priv(vb->vb2_queue);


 if (!dev->udev)
  return -ENODEV;

 return 0;
}
