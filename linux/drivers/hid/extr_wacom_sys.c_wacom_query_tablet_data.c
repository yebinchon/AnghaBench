
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom {int init_work; } ;


 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void wacom_query_tablet_data(struct wacom *wacom)
{
 schedule_delayed_work(&wacom->init_work, msecs_to_jiffies(1000));
}
