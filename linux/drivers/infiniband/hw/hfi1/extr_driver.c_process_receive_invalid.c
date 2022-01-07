
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_packet {int rhf; TYPE_1__* rcd; } ;
struct TYPE_2__ {int dd; } ;


 int RHF_RCV_CONTINUE ;
 int dd_dev_err (int ,char*,int ) ;
 int rhf_rcv_type (int ) ;

__attribute__((used)) static int process_receive_invalid(struct hfi1_packet *packet)
{
 dd_dev_err(packet->rcd->dd, "Invalid packet type %d. Dropping\n",
     rhf_rcv_type(packet->rhf));
 return RHF_RCV_CONTINUE;
}
