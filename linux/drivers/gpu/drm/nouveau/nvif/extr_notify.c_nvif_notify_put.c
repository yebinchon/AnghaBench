
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvif_notify {int work; int flags; int object; } ;


 int NVIF_NOTIFY_USER ;
 int NVIF_NOTIFY_WORK ;
 int flush_work (int *) ;
 scalar_t__ likely (int ) ;
 int nvif_notify_put_ (struct nvif_notify*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int
nvif_notify_put(struct nvif_notify *notify)
{
 if (likely(notify->object) &&
     test_and_clear_bit(NVIF_NOTIFY_USER, &notify->flags)) {
  int ret = nvif_notify_put_(notify);
  if (test_bit(NVIF_NOTIFY_WORK, &notify->flags))
   flush_work(&notify->work);
  return ret;
 }
 return 0;
}
