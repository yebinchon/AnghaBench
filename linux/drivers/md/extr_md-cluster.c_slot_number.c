
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int slot_number; } ;



__attribute__((used)) static int slot_number(struct mddev *mddev)
{
 struct md_cluster_info *cinfo = mddev->cluster_info;

 return cinfo->slot_number - 1;
}
