
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc {int buf_mutex; } ;


 int msc_buffer_unlocked_free_unless_used (struct msc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int msc_buffer_free_unless_used(struct msc *msc)
{
 int ret;

 mutex_lock(&msc->buf_mutex);
 ret = msc_buffer_unlocked_free_unless_used(msc);
 mutex_unlock(&msc->buf_mutex);

 return ret;
}
