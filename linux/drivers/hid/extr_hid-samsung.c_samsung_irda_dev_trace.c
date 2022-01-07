
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;


 int hid_info (struct hid_device*,char*,unsigned int) ;

__attribute__((used)) static inline void samsung_irda_dev_trace(struct hid_device *hdev,
  unsigned int rsize)
{
 hid_info(hdev, "fixing up Samsung IrDA %d byte report descriptor\n",
   rsize);
}
