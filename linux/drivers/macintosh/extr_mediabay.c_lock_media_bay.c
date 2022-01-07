
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_bay_info {int user_lock; int lock; } ;
struct macio_dev {int dummy; } ;


 struct media_bay_info* macio_get_drvdata (struct macio_dev*) ;
 int mutex_lock (int *) ;

void lock_media_bay(struct macio_dev *baydev)
{
 struct media_bay_info* bay;

 if (baydev == ((void*)0))
  return;
 bay = macio_get_drvdata(baydev);
 if (bay == ((void*)0))
  return;
 mutex_lock(&bay->lock);
 bay->user_lock = 1;
}
