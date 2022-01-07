
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int status; int goto_error; int aeth_syndrome; } ;
struct rxe_qp {TYPE_1__ resp; } ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;



__attribute__((used)) static void do_class_ac_error(struct rxe_qp *qp, u8 syndrome,
         enum ib_wc_status status)
{
 qp->resp.aeth_syndrome = syndrome;
 qp->resp.status = status;


 qp->resp.goto_error = 1;
}
