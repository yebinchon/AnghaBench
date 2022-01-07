
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int channel; } ;
struct intel_guc_log {TYPE_4__ relay; TYPE_3__* vma; } ;
struct TYPE_7__ {TYPE_2__* obj; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_6__ {TYPE_1__ base; } ;


 int relay_flush (int ) ;
 int relay_reserve (int ,int ) ;
 int smp_wmb () ;

__attribute__((used)) static void guc_move_to_next_buf(struct intel_guc_log *log)
{




 smp_wmb();


 relay_reserve(log->relay.channel, log->vma->obj->base.size);


 relay_flush(log->relay.channel);
}
