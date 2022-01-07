
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scmi_fc_db_info {int width; int mask; int addr; int set; } ;


 int SCMI_PERF_FC_RING_DB (int) ;
 int ioread64_hi_lo (int ) ;
 int iowrite64_hi_lo (int ,int ) ;

__attribute__((used)) static void scmi_perf_fc_ring_db(struct scmi_fc_db_info *db)
{
 if (!db || !db->addr)
  return;

 if (db->width == 1)
  SCMI_PERF_FC_RING_DB(8);
 else if (db->width == 2)
  SCMI_PERF_FC_RING_DB(16);
 else if (db->width == 4)
  SCMI_PERF_FC_RING_DB(32);
 else



 {
  u64 val = 0;

  if (db->mask)
   val = ioread64_hi_lo(db->addr) & db->mask;
  iowrite64_hi_lo(db->set, db->addr);
 }

}
