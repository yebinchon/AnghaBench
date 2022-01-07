
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int dvb_net_do_ioctl ;
 long dvb_usercopy (struct file*,unsigned int,unsigned long,int ) ;

__attribute__((used)) static long dvb_net_ioctl(struct file *file,
       unsigned int cmd, unsigned long arg)
{
 return dvb_usercopy(file, cmd, arg, dvb_net_do_ioctl);
}
