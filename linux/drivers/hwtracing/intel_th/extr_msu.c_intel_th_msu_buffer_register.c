
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msu_buffer_entry {int entry; struct module* owner; struct msu_buffer const* mbuf; } ;
struct msu_buffer {int name; } ;
struct module {int dummy; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ __msu_buffer_entry_find (int ) ;
 int kfree (struct msu_buffer_entry*) ;
 struct msu_buffer_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int msu_buffer_list ;
 int msu_buffer_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int intel_th_msu_buffer_register(const struct msu_buffer *mbuf,
     struct module *owner)
{
 struct msu_buffer_entry *mbe;
 int ret = 0;

 mbe = kzalloc(sizeof(*mbe), GFP_KERNEL);
 if (!mbe)
  return -ENOMEM;

 mutex_lock(&msu_buffer_mutex);
 if (__msu_buffer_entry_find(mbuf->name)) {
  ret = -EEXIST;
  kfree(mbe);
  goto unlock;
 }

 mbe->mbuf = mbuf;
 mbe->owner = owner;
 list_add_tail(&mbe->entry, &msu_buffer_list);
unlock:
 mutex_unlock(&msu_buffer_mutex);

 return ret;
}
