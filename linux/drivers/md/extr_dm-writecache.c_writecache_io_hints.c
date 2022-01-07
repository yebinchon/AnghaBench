
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_limits {scalar_t__ logical_block_size; scalar_t__ physical_block_size; scalar_t__ io_min; } ;
struct dm_writecache {scalar_t__ block_size; } ;
struct dm_target {struct dm_writecache* private; } ;



__attribute__((used)) static void writecache_io_hints(struct dm_target *ti, struct queue_limits *limits)
{
 struct dm_writecache *wc = ti->private;

 if (limits->logical_block_size < wc->block_size)
  limits->logical_block_size = wc->block_size;

 if (limits->physical_block_size < wc->block_size)
  limits->physical_block_size = wc->block_size;

 if (limits->io_min < wc->block_size)
  limits->io_min = wc->block_size;
}
