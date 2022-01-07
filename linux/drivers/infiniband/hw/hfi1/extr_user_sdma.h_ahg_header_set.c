
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int ERANGE ;
 int sdma_build_ahg_descriptor (int ,int ,int ,int ) ;

__attribute__((used)) static inline int ahg_header_set(u32 *arr, int idx, size_t array_size,
     u8 dw, u8 bit, u8 width, u16 value)
{
 if ((size_t)idx >= array_size)
  return -ERANGE;
 arr[idx++] = sdma_build_ahg_descriptor(value, dw, bit, width);
 return idx;
}
