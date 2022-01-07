
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CAAM_CMD_SZ ;
 scalar_t__ caam32_to_cpu (int ) ;
 int cpu_to_caam32 (scalar_t__) ;
 int * desc_end (int * const) ;
 int memcpy (int *,void const*,int) ;

__attribute__((used)) static inline void append_data(u32 * const desc, const void *data, int len)
{
 u32 *offset = desc_end(desc);

 if (len)
  memcpy(offset, data, len);

 (*desc) = cpu_to_caam32(caam32_to_cpu(*desc) +
    (len + CAAM_CMD_SZ - 1) / CAAM_CMD_SZ);
}
