
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousedev {int exist; int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mousedev_mark_dead(struct mousedev *mousedev)
{
 mutex_lock(&mousedev->mutex);
 mousedev->exist = 0;
 mutex_unlock(&mousedev->mutex);
}
