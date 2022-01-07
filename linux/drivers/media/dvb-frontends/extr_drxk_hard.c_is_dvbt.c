
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxk_state {scalar_t__ m_operation_mode; } ;


 scalar_t__ OM_DVBT ;

__attribute__((used)) static bool is_dvbt(struct drxk_state *state)
{
 return state->m_operation_mode == OM_DVBT;
}
