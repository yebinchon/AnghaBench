
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r10conf {TYPE_2__* mirrors; } ;
struct r10bio {scalar_t__ sectors; TYPE_3__* devs; TYPE_1__* mddev; } ;
struct TYPE_6__ {size_t devnum; scalar_t__ addr; } ;
struct TYPE_5__ {scalar_t__ head_position; } ;
struct TYPE_4__ {struct r10conf* private; } ;



__attribute__((used)) static inline void update_head_pos(int slot, struct r10bio *r10_bio)
{
 struct r10conf *conf = r10_bio->mddev->private;

 conf->mirrors[r10_bio->devs[slot].devnum].head_position =
  r10_bio->devs[slot].addr + (r10_bio->sectors);
}
