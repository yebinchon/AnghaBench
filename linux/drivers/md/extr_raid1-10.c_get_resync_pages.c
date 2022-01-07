
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resync_pages {int dummy; } ;
struct bio {struct resync_pages* bi_private; } ;



__attribute__((used)) static inline struct resync_pages *get_resync_pages(struct bio *bio)
{
 return bio->bi_private;
}
