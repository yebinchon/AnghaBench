
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int sync_set; int bio_set; } ;


 int __md_stop (struct mddev*) ;
 int bioset_exit (int *) ;

void md_stop(struct mddev *mddev)
{



 __md_stop(mddev);
 bioset_exit(&mddev->bio_set);
 bioset_exit(&mddev->sync_set);
}
