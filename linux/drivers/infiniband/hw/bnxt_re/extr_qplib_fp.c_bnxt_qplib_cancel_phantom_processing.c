
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int condition; int send_phantom; int single; } ;
struct bnxt_qplib_qp {TYPE_1__ sq; } ;



__attribute__((used)) static void bnxt_qplib_cancel_phantom_processing(struct bnxt_qplib_qp *qp)
{
 qp->sq.condition = 0;
 qp->sq.send_phantom = 0;
 qp->sq.single = 0;
}
