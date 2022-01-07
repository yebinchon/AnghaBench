
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool radeon_check_pot_argument(int arg)
{
 return (arg & (arg - 1)) == 0;
}
