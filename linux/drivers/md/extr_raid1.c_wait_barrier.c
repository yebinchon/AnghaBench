
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int dummy; } ;
typedef int sector_t ;


 int _wait_barrier (struct r1conf*,int) ;
 int sector_to_idx (int ) ;

__attribute__((used)) static void wait_barrier(struct r1conf *conf, sector_t sector_nr)
{
 int idx = sector_to_idx(sector_nr);

 _wait_barrier(conf, idx);
}
