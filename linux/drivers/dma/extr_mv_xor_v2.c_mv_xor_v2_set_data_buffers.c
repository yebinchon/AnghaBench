
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_v2_device {int dummy; } ;
struct mv_xor_v2_descriptor {int* data_buff_addr; } ;
typedef int dma_addr_t ;


 void* lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void mv_xor_v2_set_data_buffers(struct mv_xor_v2_device *xor_dev,
     struct mv_xor_v2_descriptor *desc,
     dma_addr_t src, int index)
{
 int arr_index = ((index >> 1) * 3);
 if ((index & 0x1) == 0) {
  desc->data_buff_addr[arr_index] = lower_32_bits(src);

  desc->data_buff_addr[arr_index + 2] &= ~0xFFFF;
  desc->data_buff_addr[arr_index + 2] |=
   upper_32_bits(src) & 0xFFFF;
 } else {
  desc->data_buff_addr[arr_index + 1] =
   lower_32_bits(src);

  desc->data_buff_addr[arr_index + 2] &= ~0xFFFF0000;
  desc->data_buff_addr[arr_index + 2] |=
   (upper_32_bits(src) & 0xFFFF) << 16;
 }
}
