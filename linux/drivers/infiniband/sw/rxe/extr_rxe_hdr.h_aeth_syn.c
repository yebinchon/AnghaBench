
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rxe_pkt_info {size_t opcode; scalar_t__ offset; scalar_t__ hdr; } ;
struct TYPE_2__ {scalar_t__* offset; } ;


 size_t RXE_AETH ;
 int __aeth_syn (scalar_t__) ;
 TYPE_1__* rxe_opcode ;

__attribute__((used)) static inline u8 aeth_syn(struct rxe_pkt_info *pkt)
{
 return __aeth_syn(pkt->hdr + pkt->offset
  + rxe_opcode[pkt->opcode].offset[RXE_AETH]);
}
