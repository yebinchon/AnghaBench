
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_queue {int sharing; } ;
struct spu_qreg {unsigned long type; struct spu_queue* queue; } ;


 int cpu_online_mask ;
 int cpumask_any_and (int *,int ) ;
 int spu_queue_register_workfn ;
 int work_on_cpu_safe (int,int ,struct spu_qreg*) ;

__attribute__((used)) static int spu_queue_register(struct spu_queue *p, unsigned long q_type)
{
 int cpu = cpumask_any_and(&p->sharing, cpu_online_mask);
 struct spu_qreg qr = { .queue = p, .type = q_type };

 return work_on_cpu_safe(cpu, spu_queue_register_workfn, &qr);
}
