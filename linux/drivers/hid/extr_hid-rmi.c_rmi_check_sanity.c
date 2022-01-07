
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_device {int dummy; } ;



__attribute__((used)) static int rmi_check_sanity(struct hid_device *hdev, u8 *data, int size)
{
 int valid_size = size;







 while ((data[valid_size - 1] == 0xff) && valid_size > 0)
  valid_size--;

 return valid_size;
}
