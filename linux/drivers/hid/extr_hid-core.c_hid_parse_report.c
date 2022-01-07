
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {unsigned int dev_rsize; int dev_rdesc; } ;
typedef int __u8 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kmemdup (int *,unsigned int,int ) ;

int hid_parse_report(struct hid_device *hid, __u8 *start, unsigned size)
{
 hid->dev_rdesc = kmemdup(start, size, GFP_KERNEL);
 if (!hid->dev_rdesc)
  return -ENOMEM;
 hid->dev_rsize = size;
 return 0;
}
