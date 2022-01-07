
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct block_device {int dummy; } ;


 int __lookup_origin (struct block_device*) ;
 int __minimum_chunk_size (int ) ;
 int _origins_lock ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static uint32_t get_origin_minimum_chunksize(struct block_device *bdev)
{
 uint32_t min_chunksize;

 down_read(&_origins_lock);
 min_chunksize = __minimum_chunk_size(__lookup_origin(bdev));
 up_read(&_origins_lock);

 return min_chunksize;
}
