
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_hid {scalar_t__ bufsize; int * argsbuf; int * cmdbuf; int * rawbuf; int * inbuf; } ;


 int kfree (int *) ;

__attribute__((used)) static void i2c_hid_free_buffers(struct i2c_hid *ihid)
{
 kfree(ihid->inbuf);
 kfree(ihid->rawbuf);
 kfree(ihid->argsbuf);
 kfree(ihid->cmdbuf);
 ihid->inbuf = ((void*)0);
 ihid->rawbuf = ((void*)0);
 ihid->cmdbuf = ((void*)0);
 ihid->argsbuf = ((void*)0);
 ihid->bufsize = 0;
}
