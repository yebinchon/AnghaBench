
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bam; } ;
union chan_param_mem {TYPE_1__ pp; } ;
typedef enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;



__attribute__((used)) static void ipu_ch_param_set_rotation(union chan_param_mem *params,
          enum ipu_rotate_mode rotate)
{
 params->pp.bam = rotate;
}
