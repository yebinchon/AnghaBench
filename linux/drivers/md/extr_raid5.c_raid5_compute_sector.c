
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int pd_idx; int qd_idx; int ddf_layout; } ;
struct r5conf {int prev_algo; int algorithm; int prev_chunk_sectors; int chunk_sectors; int previous_raid_disks; int raid_disks; int max_degraded; int level; } ;
typedef int sector_t ;
 int BUG () ;
 int sector_div (int,int) ;

sector_t raid5_compute_sector(struct r5conf *conf, sector_t r_sector,
         int previous, int *dd_idx,
         struct stripe_head *sh)
{
 sector_t stripe, stripe2;
 sector_t chunk_number;
 unsigned int chunk_offset;
 int pd_idx, qd_idx;
 int ddf_layout = 0;
 sector_t new_sector;
 int algorithm = previous ? conf->prev_algo
     : conf->algorithm;
 int sectors_per_chunk = previous ? conf->prev_chunk_sectors
      : conf->chunk_sectors;
 int raid_disks = previous ? conf->previous_raid_disks
      : conf->raid_disks;
 int data_disks = raid_disks - conf->max_degraded;






 chunk_offset = sector_div(r_sector, sectors_per_chunk);
 chunk_number = r_sector;




 stripe = chunk_number;
 *dd_idx = sector_div(stripe, data_disks);
 stripe2 = stripe;



 pd_idx = qd_idx = -1;
 switch(conf->level) {
 case 4:
  pd_idx = data_disks;
  break;
 case 5:
  switch (algorithm) {
  case 141:
   pd_idx = data_disks - sector_div(stripe2, raid_disks);
   if (*dd_idx >= pd_idx)
    (*dd_idx)++;
   break;
  case 134:
   pd_idx = sector_div(stripe2, raid_disks);
   if (*dd_idx >= pd_idx)
    (*dd_idx)++;
   break;
  case 139:
   pd_idx = data_disks - sector_div(stripe2, raid_disks);
   *dd_idx = (pd_idx + 1 + *dd_idx) % raid_disks;
   break;
  case 132:
   pd_idx = sector_div(stripe2, raid_disks);
   *dd_idx = (pd_idx + 1 + *dd_idx) % raid_disks;
   break;
  case 137:
   pd_idx = 0;
   (*dd_idx)++;
   break;
  case 135:
   pd_idx = data_disks;
   break;
  default:
   BUG();
  }
  break;
 case 6:

  switch (algorithm) {
  case 141:
   pd_idx = raid_disks - 1 - sector_div(stripe2, raid_disks);
   qd_idx = pd_idx + 1;
   if (pd_idx == raid_disks-1) {
    (*dd_idx)++;
    qd_idx = 0;
   } else if (*dd_idx >= pd_idx)
    (*dd_idx) += 2;
   break;
  case 134:
   pd_idx = sector_div(stripe2, raid_disks);
   qd_idx = pd_idx + 1;
   if (pd_idx == raid_disks-1) {
    (*dd_idx)++;
    qd_idx = 0;
   } else if (*dd_idx >= pd_idx)
    (*dd_idx) += 2;
   break;
  case 139:
   pd_idx = raid_disks - 1 - sector_div(stripe2, raid_disks);
   qd_idx = (pd_idx + 1) % raid_disks;
   *dd_idx = (pd_idx + 2 + *dd_idx) % raid_disks;
   break;
  case 132:
   pd_idx = sector_div(stripe2, raid_disks);
   qd_idx = (pd_idx + 1) % raid_disks;
   *dd_idx = (pd_idx + 2 + *dd_idx) % raid_disks;
   break;

  case 137:
   pd_idx = 0;
   qd_idx = 1;
   (*dd_idx) += 2;
   break;
  case 135:
   pd_idx = data_disks;
   qd_idx = data_disks + 1;
   break;

  case 128:



   pd_idx = sector_div(stripe2, raid_disks);
   qd_idx = pd_idx + 1;
   if (pd_idx == raid_disks-1) {
    (*dd_idx)++;
    qd_idx = 0;
   } else if (*dd_idx >= pd_idx)
    (*dd_idx) += 2;
   ddf_layout = 1;
   break;

  case 129:




   stripe2 += 1;
   pd_idx = raid_disks - 1 - sector_div(stripe2, raid_disks);
   qd_idx = pd_idx + 1;
   if (pd_idx == raid_disks-1) {
    (*dd_idx)++;
    qd_idx = 0;
   } else if (*dd_idx >= pd_idx)
    (*dd_idx) += 2;
   ddf_layout = 1;
   break;

  case 130:

   pd_idx = raid_disks - 1 - sector_div(stripe2, raid_disks);
   qd_idx = (pd_idx + raid_disks - 1) % raid_disks;
   *dd_idx = (pd_idx + 1 + *dd_idx) % raid_disks;
   ddf_layout = 1;
   break;

  case 140:

   pd_idx = data_disks - sector_div(stripe2, raid_disks-1);
   if (*dd_idx >= pd_idx)
    (*dd_idx)++;
   qd_idx = raid_disks - 1;
   break;

  case 133:
   pd_idx = sector_div(stripe2, raid_disks-1);
   if (*dd_idx >= pd_idx)
    (*dd_idx)++;
   qd_idx = raid_disks - 1;
   break;

  case 138:
   pd_idx = data_disks - sector_div(stripe2, raid_disks-1);
   *dd_idx = (pd_idx + 1 + *dd_idx) % (raid_disks-1);
   qd_idx = raid_disks - 1;
   break;

  case 131:
   pd_idx = sector_div(stripe2, raid_disks-1);
   *dd_idx = (pd_idx + 1 + *dd_idx) % (raid_disks-1);
   qd_idx = raid_disks - 1;
   break;

  case 136:
   pd_idx = 0;
   (*dd_idx)++;
   qd_idx = raid_disks - 1;
   break;

  default:
   BUG();
  }
  break;
 }

 if (sh) {
  sh->pd_idx = pd_idx;
  sh->qd_idx = qd_idx;
  sh->ddf_layout = ddf_layout;
 }



 new_sector = (sector_t)stripe * sectors_per_chunk + chunk_offset;
 return new_sector;
}
