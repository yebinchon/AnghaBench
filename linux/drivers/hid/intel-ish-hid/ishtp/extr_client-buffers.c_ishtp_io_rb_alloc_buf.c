
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; int data; } ;
struct ishtp_cl_rb {TYPE_1__ buffer; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kmalloc (size_t,int ) ;

int ishtp_io_rb_alloc_buf(struct ishtp_cl_rb *rb, size_t length)
{
 if (!rb)
  return -EINVAL;

 if (length == 0)
  return 0;

 rb->buffer.data = kmalloc(length, GFP_KERNEL);
 if (!rb->buffer.data)
  return -ENOMEM;

 rb->buffer.size = length;
 return 0;
}
