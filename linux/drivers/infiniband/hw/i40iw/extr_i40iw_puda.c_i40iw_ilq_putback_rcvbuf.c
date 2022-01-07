
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct TYPE_4__ {TYPE_1__* rq_base; } ;
struct i40iw_sc_qp {TYPE_2__ qp_uk; } ;
struct TYPE_3__ {scalar_t__* elem; } ;


 int I40IWQPSQ_VALID ;
 scalar_t__ LS_64 (int,int ) ;
 int get_64bit_val (scalar_t__*,int,scalar_t__*) ;
 int set_64bit_val (scalar_t__*,int,scalar_t__) ;

__attribute__((used)) static void i40iw_ilq_putback_rcvbuf(struct i40iw_sc_qp *qp, u32 wqe_idx)
{
 u64 *wqe;
 u64 offset24;

 wqe = qp->qp_uk.rq_base[wqe_idx].elem;
 get_64bit_val(wqe, 24, &offset24);
 offset24 = (offset24) ? 0 : LS_64(1, I40IWQPSQ_VALID);
 set_64bit_val(wqe, 24, offset24);
}
