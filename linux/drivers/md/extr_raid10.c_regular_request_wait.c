
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r10conf {scalar_t__ reshape_progress; int wait_barrier; int mddev; } ;
struct mddev {int recovery; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef scalar_t__ sector_t ;


 int MD_RECOVERY_RESHAPE ;
 int allow_barrier (struct r10conf*) ;
 int raid10_log (int ,char*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_barrier (struct r10conf*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void regular_request_wait(struct mddev *mddev, struct r10conf *conf,
     struct bio *bio, sector_t sectors)
{
 wait_barrier(conf);
 while (test_bit(MD_RECOVERY_RESHAPE, &mddev->recovery) &&
     bio->bi_iter.bi_sector < conf->reshape_progress &&
     bio->bi_iter.bi_sector + sectors > conf->reshape_progress) {
  raid10_log(conf->mddev, "wait reshape");
  allow_barrier(conf);
  wait_event(conf->wait_barrier,
      conf->reshape_progress <= bio->bi_iter.bi_sector ||
      conf->reshape_progress >= bio->bi_iter.bi_sector +
      sectors);
  wait_barrier(conf);
 }
}
