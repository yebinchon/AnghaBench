
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unstripe_c {int chunk_size; } ;
struct queue_limits {int chunk_sectors; } ;
struct dm_target {struct unstripe_c* private; } ;



__attribute__((used)) static void unstripe_io_hints(struct dm_target *ti,
          struct queue_limits *limits)
{
 struct unstripe_c *uc = ti->private;

 limits->chunk_sectors = uc->chunk_size;
}
