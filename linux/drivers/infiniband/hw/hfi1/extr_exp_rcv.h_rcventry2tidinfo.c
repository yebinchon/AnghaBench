
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CTRL ;
 int EXP_TID_SET (int ,int) ;
 int IDX ;

__attribute__((used)) static inline u32 rcventry2tidinfo(u32 rcventry)
{
 u32 pair = rcventry & ~0x1;

 return EXP_TID_SET(IDX, pair >> 1) |
  EXP_TID_SET(CTRL, 1 << (rcventry - pair));
}
