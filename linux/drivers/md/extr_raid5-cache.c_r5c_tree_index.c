
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int chunk_sectors; } ;
typedef int sector_t ;


 int sector_div (int ,int ) ;

__attribute__((used)) static inline sector_t r5c_tree_index(struct r5conf *conf,
          sector_t sect)
{
 sector_t offset;

 offset = sector_div(sect, conf->chunk_sectors);
 return sect;
}
