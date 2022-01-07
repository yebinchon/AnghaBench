
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_dev {int is_async; int (* resume ) (struct atmel_sha_dev*) ;} ;


 int stub1 (struct atmel_sha_dev*) ;

__attribute__((used)) static void atmel_sha_done_task(unsigned long data)
{
 struct atmel_sha_dev *dd = (struct atmel_sha_dev *)data;

 dd->is_async = 1;
 (void)dd->resume(dd);
}
