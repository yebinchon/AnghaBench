
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_dp_aux_msg {int request; } ;


 int DP0_AUXCFG0_ADDR_ONLY ;
 int DP0_AUXCFG0_BSIZE ;
 int FIELD_PREP (int ,size_t) ;

__attribute__((used)) static u32 tc_auxcfg0(struct drm_dp_aux_msg *msg, size_t size)
{
 u32 auxcfg0 = msg->request;

 if (size)
  auxcfg0 |= FIELD_PREP(DP0_AUXCFG0_BSIZE, size - 1);
 else
  auxcfg0 |= DP0_AUXCFG0_ADDR_ONLY;

 return auxcfg0;
}
