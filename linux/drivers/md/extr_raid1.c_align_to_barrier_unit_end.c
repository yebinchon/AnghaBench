
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sector_t ;


 int BARRIER_UNIT_SECTOR_SIZE ;
 int WARN_ON (int) ;
 scalar_t__ round_up (scalar_t__,int ) ;

__attribute__((used)) static sector_t align_to_barrier_unit_end(sector_t start_sector,
       sector_t sectors)
{
 sector_t len;

 WARN_ON(sectors == 0);




 len = round_up(start_sector + 1, BARRIER_UNIT_SECTOR_SIZE) -
       start_sector;

 if (len > sectors)
  len = sectors;

 return len;
}
