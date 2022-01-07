
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int dummy; } ;


 int get_pool_mode (struct pool*) ;
 int is_read_only_pool_mode (int ) ;

__attribute__((used)) static bool is_read_only(struct pool *pool)
{
 return is_read_only_pool_mode(get_pool_mode(pool));
}
