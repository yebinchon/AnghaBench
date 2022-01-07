
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp {int dummy; } ;


 int siw_qp_get (int ) ;
 int to_siw_qp (struct ib_qp*) ;

void siw_qp_get_ref(struct ib_qp *base_qp)
{
 siw_qp_get(to_siw_qp(base_qp));
}
