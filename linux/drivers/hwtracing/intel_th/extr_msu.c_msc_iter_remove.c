
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_iter {int entry; } ;
struct msc {int buf_mutex; } ;


 int kfree (struct msc_iter*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void msc_iter_remove(struct msc_iter *iter, struct msc *msc)
{
 mutex_lock(&msc->buf_mutex);
 list_del(&iter->entry);
 mutex_unlock(&msc->buf_mutex);

 kfree(iter);
}
