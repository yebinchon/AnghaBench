
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvif_notify {int flags; int object; } ;


 int NVIF_NOTIFY_USER ;
 scalar_t__ likely (int ) ;
 int nvif_notify_get_ (struct nvif_notify*) ;
 int test_and_set_bit (int ,int *) ;

int
nvif_notify_get(struct nvif_notify *notify)
{
 if (likely(notify->object) &&
     !test_and_set_bit(NVIF_NOTIFY_USER, &notify->flags))
  return nvif_notify_get_(notify);
 return 0;
}
