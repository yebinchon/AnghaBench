
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvif_notify {int (* func ) (struct nvif_notify*) ;int putcnt; int flags; } ;


 int NVIF_NOTIFY_KEEP ;
 int NVIF_NOTIFY_USER ;
 int atomic_dec (int *) ;
 int nvif_notify_get_ (struct nvif_notify*) ;
 int stub1 (struct nvif_notify*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static inline int
nvif_notify_func(struct nvif_notify *notify, bool keep)
{
 int ret = notify->func(notify);
 if (ret == NVIF_NOTIFY_KEEP ||
     !test_and_clear_bit(NVIF_NOTIFY_USER, &notify->flags)) {
  if (!keep)
   atomic_dec(&notify->putcnt);
  else
   nvif_notify_get_(notify);
 }
 return ret;
}
