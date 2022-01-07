
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int * mode_ptr; } ;
struct TYPE_5__ {TYPE_3__ cure_poison; } ;
struct ta_ras_shared_memory {int ras_status; int cmd_id; TYPE_2__ ras_in_message; } ;
struct TYPE_4__ {scalar_t__ ras_shared_buf; int ras_initialized; } ;
struct psp_context {TYPE_1__ ras; } ;


 int EINVAL ;
 int TA_RAS_COMMAND__CURE_POISON ;
 int memset (struct ta_ras_shared_memory*,int ,int) ;
 int psp_ras_invoke (struct psp_context*,int ) ;

__attribute__((used)) static int psp_v11_0_ras_cure_posion(struct psp_context *psp, uint64_t *mode_ptr)
{
 return -EINVAL;

}
