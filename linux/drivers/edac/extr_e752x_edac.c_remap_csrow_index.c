
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {struct e752x_pvt* pvt_info; } ;
struct e752x_pvt {int map_type; } ;



__attribute__((used)) static inline int remap_csrow_index(struct mem_ctl_info *mci, int index)
{
 struct e752x_pvt *pvt = mci->pvt_info;

 if (!pvt->map_type)
  return (7 - index);

 return (index);
}
