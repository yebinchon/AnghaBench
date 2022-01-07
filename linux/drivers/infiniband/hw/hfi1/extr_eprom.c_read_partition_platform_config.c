
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IMAGE_START_MAGIC ;
 int IMAGE_TRAIL_MAGIC ;
 int P1_SIZE ;
 int P1_START ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 scalar_t__ memcmp (void*,int ,int ) ;
 int read_length (struct hfi1_devdata*,int ,int,void*) ;
 int strlen (int ) ;
 void* strnstr (void*,int ,int) ;

__attribute__((used)) static int read_partition_platform_config(struct hfi1_devdata *dd, void **data,
       u32 *size)
{
 void *buffer;
 void *p;
 u32 length;
 int ret;

 buffer = kmalloc(P1_SIZE, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 ret = read_length(dd, P1_START, P1_SIZE, buffer);
 if (ret) {
  kfree(buffer);
  return ret;
 }


 if (memcmp(buffer, IMAGE_START_MAGIC, strlen(IMAGE_START_MAGIC))) {
  kfree(buffer);
  return -ENOENT;
 }


 p = strnstr(buffer, IMAGE_TRAIL_MAGIC, P1_SIZE);
 if (p)
  length = p - buffer;
 else
  length = P1_SIZE;

 *data = buffer;
 *size = length;
 return 0;
}
