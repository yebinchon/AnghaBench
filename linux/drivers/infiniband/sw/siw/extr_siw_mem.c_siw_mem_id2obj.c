
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_mem {int ref; } ;
struct siw_device {int mem_xa; } ;


 scalar_t__ kref_get_unless_zero (int *) ;
 scalar_t__ likely (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct siw_mem* xa_load (int *,int) ;

struct siw_mem *siw_mem_id2obj(struct siw_device *sdev, int stag_index)
{
 struct siw_mem *mem;

 rcu_read_lock();
 mem = xa_load(&sdev->mem_xa, stag_index);
 if (likely(mem && kref_get_unless_zero(&mem->ref))) {
  rcu_read_unlock();
  return mem;
 }
 rcu_read_unlock();

 return ((void*)0);
}
