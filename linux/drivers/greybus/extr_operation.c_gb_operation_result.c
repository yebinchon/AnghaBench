
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_operation {int errno; } ;


 int EBADR ;
 int EINPROGRESS ;
 int WARN_ON (int) ;

int gb_operation_result(struct gb_operation *operation)
{
 int result = operation->errno;

 WARN_ON(result == -EBADR);
 WARN_ON(result == -EINPROGRESS);

 return result;
}
