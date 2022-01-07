
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_event_data {int work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void etm_free_aux(void *data)
{
 struct etm_event_data *event_data = data;

 schedule_work(&event_data->work);
}
