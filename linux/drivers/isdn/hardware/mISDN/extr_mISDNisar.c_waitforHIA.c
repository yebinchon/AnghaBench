
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isar_hw {int (* read_reg ) (int ,int ) ;int name; int hw; } ;


 int ISAR_HIA ;
 int pr_debug (char*,int ,int) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static inline int
waitforHIA(struct isar_hw *isar, int timeout)
{
 int t = timeout;
 u8 val = isar->read_reg(isar->hw, ISAR_HIA);

 while ((val & 1) && t) {
  udelay(1);
  t--;
  val = isar->read_reg(isar->hw, ISAR_HIA);
 }
 pr_debug("%s: HIA after %dus\n", isar->name, timeout - t);
 return timeout;
}
