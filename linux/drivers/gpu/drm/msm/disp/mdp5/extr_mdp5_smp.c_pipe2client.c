
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;
struct TYPE_3__ {scalar_t__* clients; } ;
struct TYPE_4__ {TYPE_1__ smp; } ;


 scalar_t__ CID_UNUSED ;
 scalar_t__ WARN_ON (int) ;
 TYPE_2__* mdp5_cfg ;
 int pipe2nclients (int) ;

__attribute__((used)) static inline u32 pipe2client(enum mdp5_pipe pipe, int plane)
{


 if (WARN_ON(plane >= pipe2nclients(pipe)))
  return 0;
 return mdp5_cfg->smp.clients[pipe] + plane;
}
