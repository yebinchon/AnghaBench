
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t align_to_chunks_number_per_line(uint32_t pixels)
{
 return 256 * ((pixels + 255) / 256);
}
