
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union command {int dummy; } command ;
struct i2c_hid {size_t bufsize; void* cmdbuf; void* argsbuf; void* rawbuf; void* inbuf; } ;
typedef int __u8 ;
typedef int __u16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int i2c_hid_free_buffers (struct i2c_hid*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int i2c_hid_alloc_buffers(struct i2c_hid *ihid, size_t report_size)
{


 int args_len = sizeof(__u8) +
         sizeof(__u8) +
         sizeof(__u16) +
         sizeof(__u16) +
         report_size;

 ihid->inbuf = kzalloc(report_size, GFP_KERNEL);
 ihid->rawbuf = kzalloc(report_size, GFP_KERNEL);
 ihid->argsbuf = kzalloc(args_len, GFP_KERNEL);
 ihid->cmdbuf = kzalloc(sizeof(union command) + args_len, GFP_KERNEL);

 if (!ihid->inbuf || !ihid->rawbuf || !ihid->argsbuf || !ihid->cmdbuf) {
  i2c_hid_free_buffers(ihid);
  return -ENOMEM;
 }

 ihid->bufsize = report_size;

 return 0;
}
