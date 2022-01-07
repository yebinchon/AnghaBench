
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int dummy; } ;


 int error_retry_list_with_code (struct pool*,int ) ;
 int get_pool_io_error_code (struct pool*) ;

__attribute__((used)) static void error_retry_list(struct pool *pool)
{
 error_retry_list_with_code(pool, get_pool_io_error_code(pool));
}
