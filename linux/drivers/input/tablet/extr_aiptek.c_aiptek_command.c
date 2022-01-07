
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct aiptek {TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int aiptek_set_report (struct aiptek*,int,int,int*,int const) ;
 int dev_dbg (int *,char*,unsigned char,unsigned char) ;
 int kfree (int*) ;
 int* kmalloc (int const,int ) ;

__attribute__((used)) static int
aiptek_command(struct aiptek *aiptek, unsigned char command, unsigned char data)
{
 const int sizeof_buf = 3 * sizeof(u8);
 int ret;
 u8 *buf;

 buf = kmalloc(sizeof_buf, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 buf[0] = 2;
 buf[1] = command;
 buf[2] = data;

 if ((ret =
      aiptek_set_report(aiptek, 3, 2, buf, sizeof_buf)) != sizeof_buf) {
  dev_dbg(&aiptek->intf->dev,
   "aiptek_program: failed, tried to send: 0x%02x 0x%02x\n",
   command, data);
 }
 kfree(buf);
 return ret < 0 ? ret : 0;
}
