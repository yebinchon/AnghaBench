
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



u8 i40iw_get_encoded_wqe_size(u32 wqsize, bool cqpsq)
{
 u8 encoded_size = 0;




 if (cqpsq)
  encoded_size = 1;
 wqsize >>= 2;
 while (wqsize >>= 1)
  encoded_size++;
 return encoded_size;
}
