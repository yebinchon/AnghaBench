
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_dev {int dummy; } ;


 int atmel_sha_handle_queue (struct atmel_sha_dev*,int *) ;

__attribute__((used)) static void atmel_sha_queue_task(unsigned long data)
{
 struct atmel_sha_dev *dd = (struct atmel_sha_dev *)data;

 atmel_sha_handle_queue(dd, ((void*)0));
}
