
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;


 scalar_t__ is_qp0 (int) ;
 scalar_t__ is_qp1 (int) ;

__attribute__((used)) static int is_sqp(enum ib_qp_type qp_type)
{
 return is_qp0(qp_type) || is_qp1(qp_type);
}
