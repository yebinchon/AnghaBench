
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG () ;
 int _MDFLD_PIPEB_EVENT_FLAG ;
 int _MDFLD_PIPEC_EVENT_FLAG ;
 int _PSB_PIPEA_EVENT_FLAG ;

__attribute__((used)) static inline u32
mid_pipe_event(int pipe)
{
 if (pipe == 0)
  return _PSB_PIPEA_EVENT_FLAG;
 if (pipe == 1)
  return _MDFLD_PIPEB_EVENT_FLAG;
 if (pipe == 2)
  return _MDFLD_PIPEC_EVENT_FLAG;
 BUG();
}
