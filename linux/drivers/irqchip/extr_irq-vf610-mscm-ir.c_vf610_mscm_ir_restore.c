
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_mscm_ir_chip_data {scalar_t__ mscm_ir_base; int * saved_irsprc; } ;


 scalar_t__ MSCM_IRSPRC (int) ;
 int MSCM_IRSPRC_NUM ;
 int writew_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void vf610_mscm_ir_restore(struct vf610_mscm_ir_chip_data *data)
{
 int i;

 for (i = 0; i < MSCM_IRSPRC_NUM; i++)
  writew_relaxed(data->saved_irsprc[i], data->mscm_ir_base + MSCM_IRSPRC(i));
}
