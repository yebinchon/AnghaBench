
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned nd_inc_seq(unsigned seq)
{
 static const unsigned next[] = { 0, 2, 3, 1 };

 return next[seq & 3];
}
