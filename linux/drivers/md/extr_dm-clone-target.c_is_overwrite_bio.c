
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {scalar_t__ region_size; } ;
struct bio {int dummy; } ;


 scalar_t__ WRITE ;
 scalar_t__ bio_data_dir (struct bio*) ;
 scalar_t__ bio_sectors (struct bio*) ;

__attribute__((used)) static inline bool is_overwrite_bio(struct clone *clone, struct bio *bio)
{
 return (bio_data_dir(bio) == WRITE && bio_sectors(bio) == clone->region_size);
}
