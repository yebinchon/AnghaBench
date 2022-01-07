
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {struct gendisk* disk; } ;
struct gendisk {char* disk_name; } ;



__attribute__((used)) static inline char *pblk_disk_name(struct pblk *pblk)
{
 struct gendisk *disk = pblk->disk;

 return disk->disk_name;
}
