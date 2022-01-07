
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int utile_height (int) ;
 int utile_width (int) ;

__attribute__((used)) static bool
size_is_lt(uint32_t width, uint32_t height, int cpp)
{
 return (width <= 4 * utile_width(cpp) ||
  height <= 4 * utile_height(cpp));
}
