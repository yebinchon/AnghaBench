
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_sa_query {TYPE_1__* sm_ah; int mad_buf; } ;
struct TYPE_2__ {int ref; } ;


 int free_sm_ah ;
 int ib_free_send_mad (int ) ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void free_mad(struct ib_sa_query *query)
{
 ib_free_send_mad(query->mad_buf);
 kref_put(&query->sm_ah->ref, free_sm_ah);
}
