
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 sad_pkg_ha(u8 pkg)
{
 return (pkg >> 2) & 0x1;
}
