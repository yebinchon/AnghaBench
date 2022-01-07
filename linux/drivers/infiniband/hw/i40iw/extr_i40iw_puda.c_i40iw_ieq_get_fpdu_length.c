
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int I40IW_IEQ_MPA_FRAMING ;

__attribute__((used)) static u16 i40iw_ieq_get_fpdu_length(u16 length)
{
 u16 fpdu_len;

 fpdu_len = length + I40IW_IEQ_MPA_FRAMING;
 fpdu_len = (fpdu_len + 3) & 0xfffffffc;
 return fpdu_len;
}
