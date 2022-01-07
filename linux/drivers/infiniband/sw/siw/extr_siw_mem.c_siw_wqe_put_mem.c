
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_sge; } ;
struct TYPE_3__ {int flags; int num_sge; } ;
struct siw_wqe {int mem; TYPE_2__ rqe; TYPE_1__ sqe; } ;
typedef enum siw_opcode { ____Placeholder_siw_opcode } siw_opcode ;
 int SIW_WQE_INLINE ;
 int siw_unref_mem_sgl (int ,int) ;

void siw_wqe_put_mem(struct siw_wqe *wqe, enum siw_opcode op)
{
 switch (op) {
 case 131:
 case 128:
 case 129:
 case 130:
 case 135:
 case 134:
  if (!(wqe->sqe.flags & SIW_WQE_INLINE))
   siw_unref_mem_sgl(wqe->mem, wqe->sqe.num_sge);
  break;

 case 132:
  siw_unref_mem_sgl(wqe->mem, wqe->rqe.num_sge);
  break;

 case 133:
  siw_unref_mem_sgl(wqe->mem, 1);
  break;

 default:




  break;
 }
}
