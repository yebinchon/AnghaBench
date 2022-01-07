
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rxe_pkt_info {size_t opcode; scalar_t__ offset; scalar_t__ hdr; } ;
struct TYPE_2__ {scalar_t__* offset; } ;


 size_t RXE_AETH ;
 int __aeth_set_syn (scalar_t__,int ) ;
 TYPE_1__* rxe_opcode ;

__attribute__((used)) static inline void aeth_set_syn(struct rxe_pkt_info *pkt, u8 syn)
{
 __aeth_set_syn(pkt->hdr + pkt->offset
  + rxe_opcode[pkt->opcode].offset[RXE_AETH], syn);
}
