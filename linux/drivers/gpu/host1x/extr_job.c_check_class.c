
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct host1x_firewall {scalar_t__ class; TYPE_1__* job; } ;
struct TYPE_2__ {int (* is_valid_class ) (scalar_t__) ;} ;


 int EINVAL ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static int check_class(struct host1x_firewall *fw, u32 class)
{
 if (!fw->job->is_valid_class) {
  if (fw->class != class)
   return -EINVAL;
 } else {
  if (!fw->job->is_valid_class(fw->class))
   return -EINVAL;
 }

 return 0;
}
