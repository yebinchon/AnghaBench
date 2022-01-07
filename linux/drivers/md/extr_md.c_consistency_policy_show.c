
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {TYPE_1__* pers; scalar_t__ bitmap; int flags; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ sync_request; } ;


 int MD_HAS_JOURNAL ;
 int MD_HAS_PPL ;
 int sprintf (char*,char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static ssize_t
consistency_policy_show(struct mddev *mddev, char *page)
{
 int ret;

 if (test_bit(MD_HAS_JOURNAL, &mddev->flags)) {
  ret = sprintf(page, "journal\n");
 } else if (test_bit(MD_HAS_PPL, &mddev->flags)) {
  ret = sprintf(page, "ppl\n");
 } else if (mddev->bitmap) {
  ret = sprintf(page, "bitmap\n");
 } else if (mddev->pers) {
  if (mddev->pers->sync_request)
   ret = sprintf(page, "resync\n");
  else
   ret = sprintf(page, "none\n");
 } else {
  ret = sprintf(page, "unknown\n");
 }

 return ret;
}
