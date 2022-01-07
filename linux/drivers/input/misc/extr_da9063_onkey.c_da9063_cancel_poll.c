
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9063_onkey {int work; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void da9063_cancel_poll(void *data)
{
 struct da9063_onkey *onkey = data;

 cancel_delayed_work_sync(&onkey->work);
}
