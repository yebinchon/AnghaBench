
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msc {TYPE_1__* mbuf; int * mbuf_priv; int buf_mutex; } ;
struct TYPE_2__ {int (* unassign ) (int *) ;} ;


 int lockdep_assert_held (int *) ;
 int msu_buffer_put (TYPE_1__*) ;
 int stub1 (int *) ;

__attribute__((used)) static void msc_buffer_unassign(struct msc *msc)
{
 lockdep_assert_held(&msc->buf_mutex);

 if (!msc->mbuf)
  return;

 msc->mbuf->unassign(msc->mbuf_priv);
 msu_buffer_put(msc->mbuf);
 msc->mbuf_priv = ((void*)0);
 msc->mbuf = ((void*)0);
}
