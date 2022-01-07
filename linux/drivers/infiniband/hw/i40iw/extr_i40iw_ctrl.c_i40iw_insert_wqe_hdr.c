
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int set_64bit_val (int *,int,int ) ;
 int wmb () ;

void i40iw_insert_wqe_hdr(u64 *wqe, u64 header)
{
 wmb();
 set_64bit_val(wqe, 24, header);
}
