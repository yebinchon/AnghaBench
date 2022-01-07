
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_i2c_work_data {int work; void* areq; void* cbk; } ;


 int INIT_WORK (int *,int ) ;
 int atmel_i2c_work_handler ;
 int schedule_work (int *) ;

void atmel_i2c_enqueue(struct atmel_i2c_work_data *work_data,
         void (*cbk)(struct atmel_i2c_work_data *work_data,
       void *areq, int status),
         void *areq)
{
 work_data->cbk = (void *)cbk;
 work_data->areq = areq;

 INIT_WORK(&work_data->work, atmel_i2c_work_handler);
 schedule_work(&work_data->work);
}
