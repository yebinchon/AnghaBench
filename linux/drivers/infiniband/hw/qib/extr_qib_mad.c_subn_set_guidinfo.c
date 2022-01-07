
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct qib_ibport {int * guids; } ;
struct qib_pportdata {struct qib_ibport ibport_data; } ;
struct qib_devdata {unsigned int num_pports; struct qib_pportdata* pport; } ;
struct ib_smp {int status; scalar_t__ data; int attr_mod; } ;
struct ib_device {int dummy; } ;
typedef int __be64 ;


 int IB_SMP_INVALID_FIELD ;
 unsigned int QIB_GUIDS_PER_PORT ;
 int be32_to_cpu (int ) ;
 struct qib_devdata* dd_from_ibdev (struct ib_device*) ;
 int subn_get_guidinfo (struct ib_smp*,struct ib_device*,int) ;

__attribute__((used)) static int subn_set_guidinfo(struct ib_smp *smp, struct ib_device *ibdev,
        u8 port)
{
 struct qib_devdata *dd = dd_from_ibdev(ibdev);
 u32 startgx = 8 * be32_to_cpu(smp->attr_mod);
 __be64 *p = (__be64 *) smp->data;
 unsigned pidx = port - 1;



 if (startgx == 0 && pidx < dd->num_pports) {
  struct qib_pportdata *ppd = dd->pport + pidx;
  struct qib_ibport *ibp = &ppd->ibport_data;
  unsigned i;


  for (i = 1; i < QIB_GUIDS_PER_PORT; i++)
   ibp->guids[i - 1] = p[i];
 } else
  smp->status |= IB_SMP_INVALID_FIELD;


 return subn_get_guidinfo(smp, ibdev, port);
}
