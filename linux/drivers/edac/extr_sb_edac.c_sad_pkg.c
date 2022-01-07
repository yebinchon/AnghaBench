
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct interleave_pkg {int end; int start; } ;


 int GET_BITFIELD (int ,int ,int ) ;

__attribute__((used)) static inline int sad_pkg(const struct interleave_pkg *table, u32 reg,
     int interleave)
{
 return GET_BITFIELD(reg, table[interleave].start,
       table[interleave].end);
}
