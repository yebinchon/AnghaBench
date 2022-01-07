
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 sad_pkg_socket(u8 pkg)
{

 return ((pkg >> 3) << 2) | (pkg & 0x3);
}
