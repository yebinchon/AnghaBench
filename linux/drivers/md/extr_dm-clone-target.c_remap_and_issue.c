
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int dummy; } ;
struct bio {int dummy; } ;


 int issue_bio (struct clone*,struct bio*) ;
 int remap_to_dest (struct clone*,struct bio*) ;

__attribute__((used)) static void remap_and_issue(struct clone *clone, struct bio *bio)
{
 remap_to_dest(clone, bio);
 issue_bio(clone, bio);
}
