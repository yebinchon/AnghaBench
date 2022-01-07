
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int dummy; } ;


 int EINVAL ;


 int get_vl_weights (struct qib_pportdata*,int ,void*) ;
 int krp_highprio_0 ;
 int krp_lowprio_0 ;

__attribute__((used)) static int qib_7322_get_ib_table(struct qib_pportdata *ppd, int which, void *t)
{
 switch (which) {
 case 129:
  get_vl_weights(ppd, krp_highprio_0, t);
  break;

 case 128:
  get_vl_weights(ppd, krp_lowprio_0, t);
  break;

 default:
  return -EINVAL;
 }
 return 0;
}
