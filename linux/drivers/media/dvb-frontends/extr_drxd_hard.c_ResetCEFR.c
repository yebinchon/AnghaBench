
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxd_state {int m_ResetCEFR; } ;


 int WriteTable (struct drxd_state*,int ) ;

__attribute__((used)) static int ResetCEFR(struct drxd_state *state)
{
 return WriteTable(state, state->m_ResetCEFR);
}
