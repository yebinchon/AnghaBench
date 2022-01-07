
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_device {int dummy; } ;
struct hfi1_ibport {int dummy; } ;
struct hfi1_devdata {unsigned int num_pports; TYPE_1__* pport; } ;
struct TYPE_2__ {struct hfi1_ibport ibport_data; } ;


 int WARN_ON (int) ;
 struct hfi1_devdata* dd_from_ibdev (struct ib_device*) ;

__attribute__((used)) static inline struct hfi1_ibport *to_iport(struct ib_device *ibdev, u8 port)
{
 struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
 unsigned pidx = port - 1;

 WARN_ON(pidx >= dd->num_pports);
 return &dd->pport[pidx].ibport_data;
}
