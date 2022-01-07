
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_hw_pipe {int dummy; } ;


 int kfree (struct mdp5_hw_pipe*) ;

void mdp5_pipe_destroy(struct mdp5_hw_pipe *hwpipe)
{
 kfree(hwpipe);
}
