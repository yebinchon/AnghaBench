
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dib7000m_state {int dummy; } ;


 int dib7000m_write_word (struct dib7000m_state*,int,int) ;

__attribute__((used)) static void dib7000m_restart_agc(struct dib7000m_state *state)
{

 dib7000m_write_word(state, 898, 0x0c00);
 dib7000m_write_word(state, 898, 0x0000);
}
