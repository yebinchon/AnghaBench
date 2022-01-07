
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;



__attribute__((used)) static inline u_int
get_sapi_tei(u_char *p)
{
 u_int sapi, tei;

 sapi = *p >> 2;
 tei = p[1] >> 1;
 return sapi | (tei << 8);
}
