
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG () ;
 int PIPEACONF ;
 int PIPEBCONF ;
 int PIPECCONF ;

__attribute__((used)) static inline u32
mid_pipeconf(int pipe)
{
 if (pipe == 0)
  return PIPEACONF;
 if (pipe == 1)
  return PIPEBCONF;
 if (pipe == 2)
  return PIPECCONF;
 BUG();
}
