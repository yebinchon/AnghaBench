
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_pkt_info {size_t opcode; scalar_t__ offset; scalar_t__ hdr; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__* offset; } ;


 size_t RXE_IMMDT ;
 int __immdt_set_imm (scalar_t__,int ) ;
 TYPE_1__* rxe_opcode ;

__attribute__((used)) static inline void immdt_set_imm(struct rxe_pkt_info *pkt, __be32 imm)
{
 __immdt_set_imm(pkt->hdr + pkt->offset
  + rxe_opcode[pkt->opcode].offset[RXE_IMMDT], imm);
}
