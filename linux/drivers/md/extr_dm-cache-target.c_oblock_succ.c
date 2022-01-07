
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dm_oblock_t ;


 scalar_t__ from_oblock (int ) ;
 int to_oblock (scalar_t__) ;

__attribute__((used)) static inline dm_oblock_t oblock_succ(dm_oblock_t b)
{
 return to_oblock(from_oblock(b) + 1ull);
}
