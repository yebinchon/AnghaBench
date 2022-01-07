
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {scalar_t__ out_of_data_space; } ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_NOSPC ;

__attribute__((used)) static blk_status_t get_pool_io_error_code(struct pool *pool)
{
 return pool->out_of_data_space ? BLK_STS_NOSPC : BLK_STS_IOERR;
}
