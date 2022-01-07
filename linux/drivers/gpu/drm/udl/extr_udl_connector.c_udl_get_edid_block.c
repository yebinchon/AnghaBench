
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct udl_device {int udev; } ;


 int DRM_ERROR (char*,int,int) ;
 unsigned int EDID_LENGTH ;
 int GFP_KERNEL ;
 int HZ ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int usb_control_msg (int ,int ,int,int,int,int,int *,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int udl_get_edid_block(void *data, u8 *buf, unsigned int block,
          size_t len)
{
 int ret, i;
 u8 *read_buff;
 struct udl_device *udl = data;

 read_buff = kmalloc(2, GFP_KERNEL);
 if (!read_buff)
  return -1;

 for (i = 0; i < len; i++) {
  int bval = (i + block * EDID_LENGTH) << 8;
  ret = usb_control_msg(udl->udev,
          usb_rcvctrlpipe(udl->udev, 0),
       (0x02), (0x80 | (0x02 << 5)), bval,
       0xA1, read_buff, 2, HZ);
  if (ret < 1) {
   DRM_ERROR("Read EDID byte %d failed err %x\n", i, ret);
   kfree(read_buff);
   return -1;
  }
  buf[i] = read_buff[1];
 }

 kfree(read_buff);
 return 0;
}
