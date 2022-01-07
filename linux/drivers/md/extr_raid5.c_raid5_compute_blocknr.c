
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int disks; int sector; int pd_idx; int qd_idx; struct r5conf* raid_conf; } ;
struct r5conf {int max_degraded; int prev_chunk_sectors; int chunk_sectors; int prev_algo; int algorithm; int level; int mddev; } ;
typedef int sector_t ;
 int BUG () ;
 int mdname (int ) ;
 int pr_warn (char*,int ) ;
 int raid5_compute_sector (struct r5conf*,int,int,int*,struct stripe_head*) ;
 int sector_div (int,int) ;

sector_t raid5_compute_blocknr(struct stripe_head *sh, int i, int previous)
{
 struct r5conf *conf = sh->raid_conf;
 int raid_disks = sh->disks;
 int data_disks = raid_disks - conf->max_degraded;
 sector_t new_sector = sh->sector, check;
 int sectors_per_chunk = previous ? conf->prev_chunk_sectors
      : conf->chunk_sectors;
 int algorithm = previous ? conf->prev_algo
     : conf->algorithm;
 sector_t stripe;
 int chunk_offset;
 sector_t chunk_number;
 int dummy1, dd_idx = i;
 sector_t r_sector;
 struct stripe_head sh2;

 chunk_offset = sector_div(new_sector, sectors_per_chunk);
 stripe = new_sector;

 if (i == sh->pd_idx)
  return 0;
 switch(conf->level) {
 case 4: break;
 case 5:
  switch (algorithm) {
  case 141:
  case 134:
   if (i > sh->pd_idx)
    i--;
   break;
  case 139:
  case 132:
   if (i < sh->pd_idx)
    i += raid_disks;
   i -= (sh->pd_idx + 1);
   break;
  case 137:
   i -= 1;
   break;
  case 135:
   break;
  default:
   BUG();
  }
  break;
 case 6:
  if (i == sh->qd_idx)
   return 0;
  switch (algorithm) {
  case 141:
  case 134:
  case 128:
  case 129:
   if (sh->pd_idx == raid_disks-1)
    i--;
   else if (i > sh->pd_idx)
    i -= 2;
   break;
  case 139:
  case 132:
   if (sh->pd_idx == raid_disks-1)
    i--;
   else {

    if (i < sh->pd_idx)
     i += raid_disks;
    i -= (sh->pd_idx + 2);
   }
   break;
  case 137:
   i -= 2;
   break;
  case 135:
   break;
  case 130:

   if (sh->pd_idx == 0)
    i--;
   else {

    if (i < sh->pd_idx)
     i += raid_disks;
    i -= (sh->pd_idx + 1);
   }
   break;
  case 140:
  case 133:
   if (i > sh->pd_idx)
    i--;
   break;
  case 138:
  case 131:
   if (i < sh->pd_idx)
    i += data_disks + 1;
   i -= (sh->pd_idx + 1);
   break;
  case 136:
   i -= 1;
   break;
  default:
   BUG();
  }
  break;
 }

 chunk_number = stripe * data_disks + i;
 r_sector = chunk_number * sectors_per_chunk + chunk_offset;

 check = raid5_compute_sector(conf, r_sector,
         previous, &dummy1, &sh2);
 if (check != sh->sector || dummy1 != dd_idx || sh2.pd_idx != sh->pd_idx
  || sh2.qd_idx != sh->qd_idx) {
  pr_warn("md/raid:%s: compute_blocknr: map not correct\n",
   mdname(conf->mddev));
  return 0;
 }
 return r_sector;
}
