
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool is_next_generation(int new_generation, int old_generation)
{
 return (new_generation & 0xff) == ((old_generation + 1) & 0xff);
}
