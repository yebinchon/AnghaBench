
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_integrity_c {int bufio; } ;


 int dm_bufio_write_dirty_buffers (int ) ;
 int dm_integrity_io_error (struct dm_integrity_c*,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void dm_integrity_flush_buffers(struct dm_integrity_c *ic)
{
 int r;
 r = dm_bufio_write_dirty_buffers(ic->bufio);
 if (unlikely(r))
  dm_integrity_io_error(ic, "writing tags", r);
}
