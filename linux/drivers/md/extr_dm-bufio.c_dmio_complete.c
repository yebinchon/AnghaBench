
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_buffer {int (* end_io ) (struct dm_buffer*,int ) ;} ;


 int BLK_STS_IOERR ;
 int stub1 (struct dm_buffer*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void dmio_complete(unsigned long error, void *context)
{
 struct dm_buffer *b = context;

 b->end_io(b, unlikely(error != 0) ? BLK_STS_IOERR : 0);
}
