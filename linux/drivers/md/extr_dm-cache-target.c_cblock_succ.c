
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dm_cblock_t ;


 scalar_t__ from_cblock (int ) ;
 int to_cblock (scalar_t__) ;

__attribute__((used)) static inline dm_cblock_t cblock_succ(dm_cblock_t b)
{
 return to_cblock(from_cblock(b) + 1);
}
