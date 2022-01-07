
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;



__attribute__((used)) static inline uint8_t gen_after(uint8_t a, uint8_t b)
{
 uint8_t r = a - b;

 return r > 128U ? 0 : r;
}
