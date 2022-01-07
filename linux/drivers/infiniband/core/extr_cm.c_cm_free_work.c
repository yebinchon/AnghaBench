
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_work {scalar_t__ mad_recv_wc; } ;


 int ib_free_recv_mad (scalar_t__) ;
 int kfree (struct cm_work*) ;

__attribute__((used)) static void cm_free_work(struct cm_work *work)
{
 if (work->mad_recv_wc)
  ib_free_recv_mad(work->mad_recv_wc);
 kfree(work);
}
