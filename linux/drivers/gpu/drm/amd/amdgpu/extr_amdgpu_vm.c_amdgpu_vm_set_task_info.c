
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int process_name; scalar_t__ tgid; int task_name; scalar_t__ pid; } ;
struct amdgpu_vm {TYPE_1__ task_info; } ;
struct TYPE_5__ {scalar_t__ mm; struct TYPE_5__* group_leader; scalar_t__ pid; } ;


 TYPE_2__* current ;
 int get_task_comm (int ,TYPE_2__*) ;

void amdgpu_vm_set_task_info(struct amdgpu_vm *vm)
{
 if (!vm->task_info.pid) {
  vm->task_info.pid = current->pid;
  get_task_comm(vm->task_info.task_name, current);

  if (current->group_leader->mm == current->mm) {
   vm->task_info.tgid = current->group_leader->pid;
   get_task_comm(vm->task_info.process_name, current->group_leader);
  }
 }
}
