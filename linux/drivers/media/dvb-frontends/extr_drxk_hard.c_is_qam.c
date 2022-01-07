
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxk_state {scalar_t__ m_operation_mode; } ;


 scalar_t__ OM_QAM_ITU_A ;
 scalar_t__ OM_QAM_ITU_B ;
 scalar_t__ OM_QAM_ITU_C ;

__attribute__((used)) static bool is_qam(struct drxk_state *state)
{
 return state->m_operation_mode == OM_QAM_ITU_A ||
     state->m_operation_mode == OM_QAM_ITU_B ||
     state->m_operation_mode == OM_QAM_ITU_C;
}
