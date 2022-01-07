
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switch_ctx {TYPE_2__* path_list; } ;
struct dm_target {scalar_t__ len; struct switch_ctx* private; } ;
struct block_device {int bd_inode; } ;
struct TYPE_4__ {scalar_t__ start; TYPE_1__* dmdev; } ;
struct TYPE_3__ {struct block_device* bdev; } ;


 int SECTOR_SHIFT ;
 scalar_t__ i_size_read (int ) ;
 unsigned int switch_get_path_nr (struct switch_ctx*,int ) ;

__attribute__((used)) static int switch_prepare_ioctl(struct dm_target *ti, struct block_device **bdev)
{
 struct switch_ctx *sctx = ti->private;
 unsigned path_nr;

 path_nr = switch_get_path_nr(sctx, 0);

 *bdev = sctx->path_list[path_nr].dmdev->bdev;




 if (ti->len + sctx->path_list[path_nr].start !=
     i_size_read((*bdev)->bd_inode) >> SECTOR_SHIFT)
  return 1;
 return 0;
}
