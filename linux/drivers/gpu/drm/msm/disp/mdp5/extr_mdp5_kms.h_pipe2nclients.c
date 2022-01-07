
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;







__attribute__((used)) static inline int pipe2nclients(enum mdp5_pipe pipe)
{
 switch (pipe) {
 case 131:
 case 130:
 case 129:
 case 128:
  return 1;
 default:
  return 3;
 }
}
