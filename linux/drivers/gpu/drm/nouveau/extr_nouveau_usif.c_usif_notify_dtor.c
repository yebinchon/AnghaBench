
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usif_notify {int head; } ;


 int kfree (struct usif_notify*) ;
 int list_del (int *) ;

__attribute__((used)) static inline void
usif_notify_dtor(struct usif_notify *ntfy)
{
 list_del(&ntfy->head);
 kfree(ntfy);
}
