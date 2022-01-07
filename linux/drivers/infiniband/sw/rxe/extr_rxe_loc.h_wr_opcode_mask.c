
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t qp_type; } ;
struct rxe_qp {TYPE_1__ ibqp; } ;
struct TYPE_4__ {unsigned int* mask; } ;


 TYPE_2__* rxe_wr_opcode_info ;

__attribute__((used)) static inline unsigned int wr_opcode_mask(int opcode, struct rxe_qp *qp)
{
 return rxe_wr_opcode_info[opcode].mask[qp->ibqp.qp_type];
}
