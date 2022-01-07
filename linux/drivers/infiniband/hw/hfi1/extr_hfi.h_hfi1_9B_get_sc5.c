
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ib_header {int dummy; } ;


 int ib_get_sc (struct ib_header*) ;
 int rhf_dc_info (int ) ;

__attribute__((used)) static inline int hfi1_9B_get_sc5(struct ib_header *hdr, u64 rhf)
{
 return ib_get_sc(hdr) | ((!!(rhf_dc_info(rhf))) << 4);
}
