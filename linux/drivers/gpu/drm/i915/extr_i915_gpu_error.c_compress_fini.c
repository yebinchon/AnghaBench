
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compress {int pool; } ;


 int pool_fini (int *) ;

__attribute__((used)) static void compress_fini(struct compress *c)
{
 pool_fini(&c->pool);
}
