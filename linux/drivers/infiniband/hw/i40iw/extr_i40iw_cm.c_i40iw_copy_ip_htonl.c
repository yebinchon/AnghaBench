
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef void* __be32 ;


 void* htonl (int ) ;

__attribute__((used)) static inline void i40iw_copy_ip_htonl(__be32 *dst, u32 *src)
{
 *dst++ = htonl(*src++);
 *dst++ = htonl(*src++);
 *dst++ = htonl(*src++);
 *dst = htonl(*src);
}
