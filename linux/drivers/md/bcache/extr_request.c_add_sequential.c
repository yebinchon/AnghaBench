
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ sequential_io; int sequential_io_avg; } ;


 int ewma_add (int ,scalar_t__,int,int ) ;

__attribute__((used)) static void add_sequential(struct task_struct *t)
{
 ewma_add(t->sequential_io_avg,
   t->sequential_io, 8, 0);

 t->sequential_io = 0;
}
