
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline bool vblank_passed(u64 seq, u64 ref)
{
 return (seq - ref) <= (1 << 23);
}
