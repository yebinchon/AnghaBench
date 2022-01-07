
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_iter {int entry; struct msc* msc; } ;
struct msc {int buf_mutex; int iter_list; scalar_t__ enabled; } ;


 int EBUSY ;
 int ENOMEM ;
 struct msc_iter* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int kfree (struct msc_iter*) ;
 struct msc_iter* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct msc_iter *msc_iter_install(struct msc *msc)
{
 struct msc_iter *iter;

 iter = kzalloc(sizeof(*iter), GFP_KERNEL);
 if (!iter)
  return ERR_PTR(-ENOMEM);

 mutex_lock(&msc->buf_mutex);







 if (msc->enabled) {
  kfree(iter);
  iter = ERR_PTR(-EBUSY);
  goto unlock;
 }

 iter->msc = msc;

 list_add_tail(&iter->entry, &msc->iter_list);
unlock:
 mutex_unlock(&msc->buf_mutex);

 return iter;
}
