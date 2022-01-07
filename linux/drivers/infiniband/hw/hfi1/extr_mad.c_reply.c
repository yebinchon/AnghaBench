
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_hdr {scalar_t__ mgmt_class; int status; int method; } ;


 int IB_MAD_RESULT_REPLY ;
 int IB_MAD_RESULT_SUCCESS ;
 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ;
 int IB_MGMT_METHOD_GET_RESP ;
 int IB_SMP_DIRECTION ;

__attribute__((used)) static int reply(struct ib_mad_hdr *smp)
{




 smp->method = IB_MGMT_METHOD_GET_RESP;
 if (smp->mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE)
  smp->status |= IB_SMP_DIRECTION;
 return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_REPLY;
}
