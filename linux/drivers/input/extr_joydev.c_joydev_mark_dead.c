
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct joydev {int exist; int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void joydev_mark_dead(struct joydev *joydev)
{
 mutex_lock(&joydev->mutex);
 joydev->exist = 0;
 mutex_unlock(&joydev->mutex);
}
