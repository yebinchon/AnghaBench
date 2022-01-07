
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r1bio {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct r1bio* raid_bio; } ;


 TYPE_1__* get_resync_pages (struct bio*) ;

__attribute__((used)) static inline struct r1bio *get_resync_r1bio(struct bio *bio)
{
 return get_resync_pages(bio)->raid_bio;
}
