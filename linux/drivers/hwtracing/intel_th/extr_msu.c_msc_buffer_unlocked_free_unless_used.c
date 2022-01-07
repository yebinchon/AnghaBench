
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc {int user_count; } ;


 int EBUSY ;
 int atomic_cmpxchg (int *,int ,int) ;
 int msc_buffer_free (struct msc*) ;

__attribute__((used)) static int msc_buffer_unlocked_free_unless_used(struct msc *msc)
{
 int count, ret = 0;

 count = atomic_cmpxchg(&msc->user_count, 0, -1);


 if (count > 0)
  ret = -EBUSY;

 else if (!count)
  msc_buffer_free(msc);


 return ret;
}
