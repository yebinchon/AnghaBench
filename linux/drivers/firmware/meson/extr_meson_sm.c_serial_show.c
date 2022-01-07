
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SM_CHIP_ID_LENGTH ;
 int SM_CHIP_ID_OFFSET ;
 int SM_GET_CHIP_ID ;
 int kfree (int*) ;
 int* kmalloc (int ,int ) ;
 int meson_sm_call_read (int*,int ,int ,int ,int ,int ,int ,int ) ;
 int sprintf (char*,char*,int,int,int,int,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static ssize_t serial_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 uint8_t *id_buf;
 int ret;

 id_buf = kmalloc(SM_CHIP_ID_LENGTH, GFP_KERNEL);
 if (!id_buf)
  return -ENOMEM;

 ret = meson_sm_call_read(id_buf, SM_CHIP_ID_LENGTH, SM_GET_CHIP_ID,
     0, 0, 0, 0, 0);
 if (ret < 0) {
  kfree(id_buf);
  return ret;
 }

 ret = sprintf(buf, "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n",
   id_buf[SM_CHIP_ID_OFFSET + 0],
   id_buf[SM_CHIP_ID_OFFSET + 1],
   id_buf[SM_CHIP_ID_OFFSET + 2],
   id_buf[SM_CHIP_ID_OFFSET + 3],
   id_buf[SM_CHIP_ID_OFFSET + 4],
   id_buf[SM_CHIP_ID_OFFSET + 5],
   id_buf[SM_CHIP_ID_OFFSET + 6],
   id_buf[SM_CHIP_ID_OFFSET + 7],
   id_buf[SM_CHIP_ID_OFFSET + 8],
   id_buf[SM_CHIP_ID_OFFSET + 9],
   id_buf[SM_CHIP_ID_OFFSET + 10],
   id_buf[SM_CHIP_ID_OFFSET + 11]);

 kfree(id_buf);

 return ret;
}
