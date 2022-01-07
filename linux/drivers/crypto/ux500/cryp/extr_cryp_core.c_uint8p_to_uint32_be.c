
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int cpu_to_be32p (int *) ;

__attribute__((used)) static inline u32 uint8p_to_uint32_be(u8 *in)
{
 u32 *data = (u32 *)in;

 return cpu_to_be32p(data);
}
