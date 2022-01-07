
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rect {int width; int height; } ;



__attribute__((used)) static bool are_rect_integer_multiples(struct rect src, struct rect dest)
{
 if (dest.width >= src.width && dest.width % src.width == 0 &&
  dest.height >= src.height && dest.height % src.height == 0)
  return 1;

 return 0;
}
