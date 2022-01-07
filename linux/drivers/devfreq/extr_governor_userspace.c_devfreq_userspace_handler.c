
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfreq {int dummy; } ;




 int userspace_exit (struct devfreq*) ;
 int userspace_init (struct devfreq*) ;

__attribute__((used)) static int devfreq_userspace_handler(struct devfreq *devfreq,
   unsigned int event, void *data)
{
 int ret = 0;

 switch (event) {
 case 129:
  ret = userspace_init(devfreq);
  break;
 case 128:
  userspace_exit(devfreq);
  break;
 default:
  break;
 }

 return ret;
}
