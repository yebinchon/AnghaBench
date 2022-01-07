
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp {int dummy; } ;


 int siw_qp_put (int ) ;
 int to_siw_qp (struct ib_qp*) ;

void siw_qp_put_ref(struct ib_qp *base_qp)
{
 siw_qp_put(to_siw_qp(base_qp));
}
