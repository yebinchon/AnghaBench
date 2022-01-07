
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hfi1_pportdata {int pkeys; } ;
struct hfi1_devdata {struct hfi1_pportdata* pport; } ;


 int memcpy (int *,int ,int) ;

__attribute__((used)) static int get_pkeys(struct hfi1_devdata *dd, u8 port, u16 *pkeys)
{
 struct hfi1_pportdata *ppd = dd->pport + port - 1;

 memcpy(pkeys, ppd->pkeys, sizeof(ppd->pkeys));

 return 0;
}
