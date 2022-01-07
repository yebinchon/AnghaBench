
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib7000m_state* demodulator_priv; } ;
struct dib7000m_state {int revision; } ;


 int dib7000m_autosearch_irq (struct dib7000m_state*,int) ;

__attribute__((used)) static int dib7000m_autosearch_is_irq(struct dvb_frontend *demod)
{
 struct dib7000m_state *state = demod->demodulator_priv;
 if (state->revision == 0x4000)
  return dib7000m_autosearch_irq(state, 1793);
 else
  return dib7000m_autosearch_irq(state, 537);
}
