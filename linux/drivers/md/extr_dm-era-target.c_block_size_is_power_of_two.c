
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era {scalar_t__ sectors_per_block_shift; } ;



__attribute__((used)) static bool block_size_is_power_of_two(struct era *era)
{
 return era->sectors_per_block_shift >= 0;
}
