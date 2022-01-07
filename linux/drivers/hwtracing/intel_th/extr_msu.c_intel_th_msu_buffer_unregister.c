
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msu_buffer_entry {int entry; } ;
struct msu_buffer {int name; } ;


 struct msu_buffer_entry* __msu_buffer_entry_find (int ) ;
 int kfree (struct msu_buffer_entry*) ;
 int list_del (int *) ;
 int msu_buffer_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_th_msu_buffer_unregister(const struct msu_buffer *mbuf)
{
 struct msu_buffer_entry *mbe;

 mutex_lock(&msu_buffer_mutex);
 mbe = __msu_buffer_entry_find(mbuf->name);
 if (mbe) {
  list_del(&mbe->entry);
  kfree(mbe);
 }
 mutex_unlock(&msu_buffer_mutex);
}
