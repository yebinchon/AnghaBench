
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ENOENT ;
 int ETH_ALEN ;
 int pr_err (char*) ;

__attribute__((used)) static int bcm47xx_increase_mac_addr(u8 *mac, u8 num)
{
 u8 *oui = mac + ETH_ALEN/2 - 1;
 u8 *p = mac + ETH_ALEN - 1;

 do {
  (*p) += num;
  if (*p > num)
   break;
  p--;
  num = 1;
 } while (p != oui);

 if (p == oui) {
  pr_err("unable to fetch mac address\n");
  return -ENOENT;
 }
 return 0;
}
