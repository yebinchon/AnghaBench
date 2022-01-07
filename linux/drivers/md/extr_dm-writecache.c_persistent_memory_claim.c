
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {int dummy; } ;


 int BUG () ;

__attribute__((used)) static int persistent_memory_claim(struct dm_writecache *wc)
{
 BUG();
}
