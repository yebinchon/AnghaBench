
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ALIGN (int,int) ;

__attribute__((used)) static inline uint32_t armada_pitch(uint32_t width, uint32_t bpp)
{
 uint32_t pitch = bpp != 4 ? width * ((bpp + 7) / 8) : width / 2;


 return ALIGN(pitch, 128);
}
