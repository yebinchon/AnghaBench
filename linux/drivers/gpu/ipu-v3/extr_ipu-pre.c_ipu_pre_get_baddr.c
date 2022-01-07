
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_pre {int buffer_paddr; } ;



u32 ipu_pre_get_baddr(struct ipu_pre *pre)
{
 return (u32)pre->buffer_paddr;
}
