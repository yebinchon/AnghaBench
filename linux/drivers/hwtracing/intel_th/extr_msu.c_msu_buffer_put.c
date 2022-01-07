
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msu_buffer_entry {int owner; } ;
struct msu_buffer {int name; } ;


 struct msu_buffer_entry* __msu_buffer_entry_find (int ) ;
 int module_put (int ) ;
 int msu_buffer_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void msu_buffer_put(const struct msu_buffer *mbuf)
{
 struct msu_buffer_entry *mbe;

 mutex_lock(&msu_buffer_mutex);
 mbe = __msu_buffer_entry_find(mbuf->name);
 if (mbe)
  module_put(mbe->owner);
 mutex_unlock(&msu_buffer_mutex);
}
