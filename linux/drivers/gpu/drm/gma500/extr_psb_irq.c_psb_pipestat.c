
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG () ;
 int PIPEASTAT ;
 int PIPEBSTAT ;
 int PIPECSTAT ;

__attribute__((used)) static inline u32
psb_pipestat(int pipe)
{
 if (pipe == 0)
  return PIPEASTAT;
 if (pipe == 1)
  return PIPEBSTAT;
 if (pipe == 2)
  return PIPECSTAT;
 BUG();
}
