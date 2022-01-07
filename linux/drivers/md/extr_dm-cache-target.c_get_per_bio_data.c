
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_bio_data {int dummy; } ;
struct bio {int dummy; } ;


 int BUG_ON (int) ;
 struct per_bio_data* dm_per_bio_data (struct bio*,int) ;

__attribute__((used)) static struct per_bio_data *get_per_bio_data(struct bio *bio)
{
 struct per_bio_data *pb = dm_per_bio_data(bio, sizeof(struct per_bio_data));
 BUG_ON(!pb);
 return pb;
}
