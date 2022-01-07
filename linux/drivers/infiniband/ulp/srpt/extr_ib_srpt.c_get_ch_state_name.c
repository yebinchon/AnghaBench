
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rdma_ch_state { ____Placeholder_rdma_ch_state } rdma_ch_state ;
__attribute__((used)) static const char *get_ch_state_name(enum rdma_ch_state s)
{
 switch (s) {
 case 132:
  return "connecting";
 case 128:
  return "live";
 case 130:
  return "disconnecting";
 case 129:
  return "draining";
 case 131:
  return "disconnected";
 }
 return "???";
}
