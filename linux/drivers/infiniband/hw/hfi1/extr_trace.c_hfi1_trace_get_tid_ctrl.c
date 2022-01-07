
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CTRL ;
 int EXP_TID_GET (int ,int ) ;

u8 hfi1_trace_get_tid_ctrl(u32 ent)
{
 return EXP_TID_GET(ent, CTRL);
}
