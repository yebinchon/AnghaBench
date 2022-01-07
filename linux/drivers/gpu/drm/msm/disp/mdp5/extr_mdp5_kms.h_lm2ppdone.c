
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mdp5_hw_mixer {int pp; } ;


 int MDP5_IRQ_PING_PONG_0_DONE ;

__attribute__((used)) static inline uint32_t lm2ppdone(struct mdp5_hw_mixer *mixer)
{
 return MDP5_IRQ_PING_PONG_0_DONE << mixer->pp;
}
