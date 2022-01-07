
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_send_wc {int send_buf; } ;
struct ib_mad_agent {int dummy; } ;


 int ib_free_send_mad (int ) ;

__attribute__((used)) static void send_handler(struct ib_mad_agent *agent,
    struct ib_mad_send_wc *mad_send_wc)
{
 ib_free_send_mad(mad_send_wc->send_buf);
}
