
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mdp5_kms {int dummy; } ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;


 int MDP5_PIPE_OP_MODE_CSC_1_EN ;
 int REG_MDP5_PIPE_OP_MODE (int) ;
 int mdp5_read (struct mdp5_kms*,int ) ;
 int mdp5_write (struct mdp5_kms*,int ,int) ;

__attribute__((used)) static void csc_disable(struct mdp5_kms *mdp5_kms, enum mdp5_pipe pipe)
{
 uint32_t value = mdp5_read(mdp5_kms, REG_MDP5_PIPE_OP_MODE(pipe)) &
    ~MDP5_PIPE_OP_MODE_CSC_1_EN;

 mdp5_write(mdp5_kms, REG_MDP5_PIPE_OP_MODE(pipe), value);
}
