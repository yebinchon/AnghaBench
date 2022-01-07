
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int EXP_TID_GET (int ,int ) ;
 int LEN ;

u16 hfi1_trace_get_tid_len(u32 ent)
{
 return EXP_TID_GET(ent, LEN);
}
