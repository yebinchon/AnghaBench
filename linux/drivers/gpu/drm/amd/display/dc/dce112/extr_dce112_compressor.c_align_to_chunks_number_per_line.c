
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce112_compressor {int dummy; } ;



__attribute__((used)) static uint32_t align_to_chunks_number_per_line(
 struct dce112_compressor *cp110,
 uint32_t pixels)
{
 return 256 * ((pixels + 255) / 256);
}
