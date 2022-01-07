
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int dm_block_t ;


 int do_div (int ,int ) ;

__attribute__((used)) static dm_block_t block_div(dm_block_t b, uint32_t n)
{
 do_div(b, n);

 return b;
}
