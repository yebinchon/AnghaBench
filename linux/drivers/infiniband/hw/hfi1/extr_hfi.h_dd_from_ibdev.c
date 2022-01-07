
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;
struct hfi1_devdata {int dummy; } ;


 struct hfi1_devdata* dd_from_dev (int ) ;
 int to_idev (struct ib_device*) ;

__attribute__((used)) static inline struct hfi1_devdata *dd_from_ibdev(struct ib_device *ibdev)
{
 return dd_from_dev(to_idev(ibdev));
}
