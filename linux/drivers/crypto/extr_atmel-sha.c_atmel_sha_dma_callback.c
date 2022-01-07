
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_dev {int is_async; } ;


 int SHA_IER ;
 int SHA_INT_DATARDY ;
 int atmel_sha_write (struct atmel_sha_dev*,int ,int ) ;

__attribute__((used)) static void atmel_sha_dma_callback(void *data)
{
 struct atmel_sha_dev *dd = data;

 dd->is_async = 1;


 atmel_sha_write(dd, SHA_IER, SHA_INT_DATARDY);
}
