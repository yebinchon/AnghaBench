
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ssb_sprom {int * il0mac; int et2phyaddr; int et2mdcport; int * et2mac; int et1phyaddr; int et1mdcport; int * et1mac; int et0phyaddr; int et0mdcport; int * et0mac; } ;


 int bcm47xx_increase_mac_addr (int *,int ) ;
 scalar_t__ bcm47xx_is_valid_mac (int *) ;
 int ether_addr_copy (int *,int *) ;
 int mac_addr_used ;
 int nvram_read_macaddr (char const*,char*,int *,int) ;
 int nvram_read_u8 (char const*,int *,char*,int *,int ,int) ;

__attribute__((used)) static void bcm47xx_fill_sprom_ethernet(struct ssb_sprom *sprom,
     const char *prefix, bool fallback)
{
 bool fb = fallback;

 nvram_read_macaddr(prefix, "et0macaddr", sprom->et0mac, fallback);
 nvram_read_u8(prefix, ((void*)0), "et0mdcport", &sprom->et0mdcport, 0,
        fallback);
 nvram_read_u8(prefix, ((void*)0), "et0phyaddr", &sprom->et0phyaddr, 0,
        fallback);

 nvram_read_macaddr(prefix, "et1macaddr", sprom->et1mac, fallback);
 nvram_read_u8(prefix, ((void*)0), "et1mdcport", &sprom->et1mdcport, 0,
        fallback);
 nvram_read_u8(prefix, ((void*)0), "et1phyaddr", &sprom->et1phyaddr, 0,
        fallback);

 nvram_read_macaddr(prefix, "et2macaddr", sprom->et2mac, fb);
 nvram_read_u8(prefix, ((void*)0), "et2mdcport", &sprom->et2mdcport, 0, fb);
 nvram_read_u8(prefix, ((void*)0), "et2phyaddr", &sprom->et2phyaddr, 0, fb);

 nvram_read_macaddr(prefix, "macaddr", sprom->il0mac, fallback);
 nvram_read_macaddr(prefix, "il0macaddr", sprom->il0mac, fallback);







 if (!bcm47xx_is_valid_mac(sprom->il0mac)) {
  u8 mac[6];

  nvram_read_macaddr(((void*)0), "et0macaddr", mac, 0);
  if (bcm47xx_is_valid_mac(mac)) {
   int err = bcm47xx_increase_mac_addr(mac, mac_addr_used);

   if (!err) {
    ether_addr_copy(sprom->il0mac, mac);
    mac_addr_used++;
   }
  }
 }
}
