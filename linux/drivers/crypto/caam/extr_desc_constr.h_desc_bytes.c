
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAAM_CMD_SZ ;
 int desc_len (void* const) ;

__attribute__((used)) static inline int desc_bytes(void * const desc)
{
 return desc_len(desc) * CAAM_CMD_SZ;
}
