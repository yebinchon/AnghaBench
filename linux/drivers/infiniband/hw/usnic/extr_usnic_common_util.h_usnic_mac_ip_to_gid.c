
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int addrconf_addr_eui48 (char*,char const* const) ;
 int memcpy (char*,int const*,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static inline void
usnic_mac_ip_to_gid(const char *const mac, const __be32 inaddr, char *raw_gid)
{
 raw_gid[0] = 0xfe;
 raw_gid[1] = 0x80;
 memset(&raw_gid[2], 0, 2);
 memcpy(&raw_gid[4], &inaddr, 4);
 addrconf_addr_eui48(&raw_gid[8], mac);
}
