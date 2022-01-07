
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_source_device {int dev; } ;
struct stm_source_data {struct stm_source_device* src; } ;


 int device_unregister (int *) ;
 int stm_source_link_drop (struct stm_source_device*) ;

void stm_source_unregister_device(struct stm_source_data *data)
{
 struct stm_source_device *src = data->src;

 stm_source_link_drop(src);

 device_unregister(&src->dev);
}
