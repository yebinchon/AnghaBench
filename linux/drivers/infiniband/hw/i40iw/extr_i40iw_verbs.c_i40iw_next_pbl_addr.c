
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct i40iw_pble_info {scalar_t__ cnt; scalar_t__ addr; } ;



__attribute__((used)) static inline u64 *i40iw_next_pbl_addr(u64 *pbl,
           struct i40iw_pble_info **pinfo,
           u32 *idx)
{
 *idx += 1;
 if ((!(*pinfo)) || (*idx != (*pinfo)->cnt))
  return ++pbl;
 *idx = 0;
 (*pinfo)++;
 return (u64 *)(*pinfo)->addr;
}
