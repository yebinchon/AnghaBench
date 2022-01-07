
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;


 int IB_QPT_SMI ;

__attribute__((used)) static int is_qp0(enum ib_qp_type qp_type)
{
 return qp_type == IB_QPT_SMI;
}
