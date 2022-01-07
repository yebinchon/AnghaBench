
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_devdata {int dummy; } ;


 int R_RDY ;
 int R_TDO_LSB ;
 int kr_r_access ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;

__attribute__((used)) static int qib_r_wait_for_rdy(struct qib_devdata *dd)
{
 u64 val;
 int timeout;

 for (timeout = 0; timeout < 100 ; ++timeout) {
  val = qib_read_kreg32(dd, kr_r_access);
  if (val & R_RDY)
   return (val >> R_TDO_LSB) & 1;
 }
 return -1;
}
