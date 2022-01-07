
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeset {int bits; } ;
typedef int dm_block_t ;


 int test_bit (int ,int ) ;

__attribute__((used)) static bool writeset_marked(struct writeset *ws, dm_block_t block)
{
 return test_bit(block, ws->bits);
}
