
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;
struct firmware {int size; int data; } ;


 int IB_7220_SERDES ;
 int qib_sd7220_prog_vfy (struct qib_devdata*,int ,int ,int ,int ) ;

__attribute__((used)) static int
qib_sd7220_ib_vfy(struct qib_devdata *dd, const struct firmware *fw)
{
 return qib_sd7220_prog_vfy(dd, IB_7220_SERDES, fw->data, fw->size, 0);
}
