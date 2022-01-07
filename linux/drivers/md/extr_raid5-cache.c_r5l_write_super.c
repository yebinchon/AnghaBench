
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5l_log {TYPE_1__* rdev; } ;
struct mddev {int sb_flags; } ;
typedef int sector_t ;
struct TYPE_2__ {int journal_tail; struct mddev* mddev; } ;


 int MD_SB_CHANGE_DEVS ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void r5l_write_super(struct r5l_log *log, sector_t cp)
{
 struct mddev *mddev = log->rdev->mddev;

 log->rdev->journal_tail = cp;
 set_bit(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
}
