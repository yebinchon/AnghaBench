
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int __be32 ;


 void* ntohl (int ) ;

void i40iw_copy_ip_ntohl(u32 *dst, __be32 *src)
{
 *dst++ = ntohl(*src++);
 *dst++ = ntohl(*src++);
 *dst++ = ntohl(*src++);
 *dst = ntohl(*src);
}
