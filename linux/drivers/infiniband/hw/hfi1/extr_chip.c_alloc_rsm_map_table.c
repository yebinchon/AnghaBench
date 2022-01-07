
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rsm_map_table {scalar_t__ used; int map; } ;
struct hfi1_devdata {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ is_ax (struct hfi1_devdata*) ;
 struct rsm_map_table* kmalloc (int,int ) ;
 int memset (int ,int,int) ;

__attribute__((used)) static struct rsm_map_table *alloc_rsm_map_table(struct hfi1_devdata *dd)
{
 struct rsm_map_table *rmt;
 u8 rxcontext = is_ax(dd) ? 0 : 0xff;

 rmt = kmalloc(sizeof(*rmt), GFP_KERNEL);
 if (rmt) {
  memset(rmt->map, rxcontext, sizeof(rmt->map));
  rmt->used = 0;
 }

 return rmt;
}
