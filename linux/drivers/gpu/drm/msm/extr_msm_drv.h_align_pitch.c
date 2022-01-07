
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALIGN (int,int) ;

__attribute__((used)) static inline int align_pitch(int width, int bpp)
{
 int bytespp = (bpp + 7) / 8;

 return bytespp * ALIGN(width, 32);
}
