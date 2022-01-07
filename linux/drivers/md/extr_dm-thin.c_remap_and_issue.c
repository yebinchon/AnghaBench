
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int dummy; } ;
struct bio {int dummy; } ;
typedef int dm_block_t ;


 int issue (struct thin_c*,struct bio*) ;
 int remap (struct thin_c*,struct bio*,int ) ;

__attribute__((used)) static void remap_and_issue(struct thin_c *tc, struct bio *bio,
       dm_block_t block)
{
 remap(tc, bio, block);
 issue(tc, bio);
}
