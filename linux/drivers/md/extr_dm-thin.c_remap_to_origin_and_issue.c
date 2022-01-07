
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int dummy; } ;
struct bio {int dummy; } ;


 int issue (struct thin_c*,struct bio*) ;
 int remap_to_origin (struct thin_c*,struct bio*) ;

__attribute__((used)) static void remap_to_origin_and_issue(struct thin_c *tc, struct bio *bio)
{
 remap_to_origin(tc, bio);
 issue(tc, bio);
}
