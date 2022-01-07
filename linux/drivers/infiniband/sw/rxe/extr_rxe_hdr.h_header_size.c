
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_pkt_info {size_t offset; size_t opcode; } ;
struct TYPE_2__ {size_t length; } ;


 TYPE_1__* rxe_opcode ;

__attribute__((used)) static inline size_t header_size(struct rxe_pkt_info *pkt)
{
 return pkt->offset + rxe_opcode[pkt->opcode].length;
}
