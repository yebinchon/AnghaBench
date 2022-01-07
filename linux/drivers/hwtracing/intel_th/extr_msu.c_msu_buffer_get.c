
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msu_buffer_entry {struct msu_buffer const* mbuf; int owner; } ;
struct msu_buffer {int dummy; } ;


 struct msu_buffer_entry* __msu_buffer_entry_find (char const*) ;
 int msu_buffer_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static const struct msu_buffer *
msu_buffer_get(const char *name)
{
 struct msu_buffer_entry *mbe;

 mutex_lock(&msu_buffer_mutex);
 mbe = __msu_buffer_entry_find(name);
 if (mbe && !try_module_get(mbe->owner))
  mbe = ((void*)0);
 mutex_unlock(&msu_buffer_mutex);

 return mbe ? mbe->mbuf : ((void*)0);
}
