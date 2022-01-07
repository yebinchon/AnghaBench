
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int dummy; } ;
struct bio {int dummy; } ;


 int __process_bio_read_only (struct thin_c*,struct bio*,int *) ;

__attribute__((used)) static void process_bio_read_only(struct thin_c *tc, struct bio *bio)
{
 __process_bio_read_only(tc, bio, ((void*)0));
}
