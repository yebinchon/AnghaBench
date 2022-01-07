
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_qp {struct ib_qp* ib_qp; } ;
struct ib_qp {int dummy; } ;
struct ib_device {int dummy; } ;


 struct siw_qp* siw_qp_id2obj (int ,int) ;
 int siw_qp_put (struct siw_qp*) ;
 int to_siw_dev (struct ib_device*) ;

__attribute__((used)) static struct ib_qp *siw_get_base_qp(struct ib_device *base_dev, int id)
{
 struct siw_qp *qp = siw_qp_id2obj(to_siw_dev(base_dev), id);

 if (qp) {



  siw_qp_put(qp);
  return qp->ib_qp;
 }
 return ((void*)0);
}
