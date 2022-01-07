
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dib7000m_state {int dummy; } ;


 int dib7000m_write_word (struct dib7000m_state*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static int dib7000m_sad_calib(struct dib7000m_state *state)
{



 dib7000m_write_word(state, 929, (0 << 1) | (0 << 0));
 dib7000m_write_word(state, 930, 776);


 dib7000m_write_word(state, 929, (1 << 0));
 dib7000m_write_word(state, 929, (0 << 0));

 msleep(1);

 return 0;
}
