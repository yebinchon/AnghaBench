
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_mad_send_wc {TYPE_1__* send_buf; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_2__ {int ah; } ;


 int RDMA_DESTROY_AH_SLEEPABLE ;
 int ib_free_send_mad (TYPE_1__*) ;
 int rdma_destroy_ah (int ,int ) ;

__attribute__((used)) static void vema_send(struct ib_mad_agent *mad_agent,
        struct ib_mad_send_wc *mad_wc)
{
 rdma_destroy_ah(mad_wc->send_buf->ah, RDMA_DESTROY_AH_SLEEPABLE);
 ib_free_send_mad(mad_wc->send_buf);
}
