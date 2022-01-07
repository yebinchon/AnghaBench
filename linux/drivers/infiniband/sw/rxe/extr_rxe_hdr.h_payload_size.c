
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_pkt_info {size_t paylen; size_t opcode; } ;
struct TYPE_2__ {size_t* offset; } ;


 size_t RXE_ICRC_SIZE ;
 size_t RXE_PAYLOAD ;
 size_t bth_pad (struct rxe_pkt_info*) ;
 TYPE_1__* rxe_opcode ;

__attribute__((used)) static inline size_t payload_size(struct rxe_pkt_info *pkt)
{
 return pkt->paylen - rxe_opcode[pkt->opcode].offset[RXE_PAYLOAD]
  - bth_pad(pkt) - RXE_ICRC_SIZE;
}
