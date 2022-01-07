
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp4_pipe { ____Placeholder_mdp4_pipe } mdp4_pipe ;


 int MDP4_OVERLAY_FLUSH_RGB1 ;
 int MDP4_OVERLAY_FLUSH_RGB2 ;
 int MDP4_OVERLAY_FLUSH_VG1 ;
 int MDP4_OVERLAY_FLUSH_VG2 ;





__attribute__((used)) static inline uint32_t pipe2flush(enum mdp4_pipe pipe)
{
 switch (pipe) {
 case 129: return MDP4_OVERLAY_FLUSH_VG1;
 case 128: return MDP4_OVERLAY_FLUSH_VG2;
 case 131: return MDP4_OVERLAY_FLUSH_RGB1;
 case 130: return MDP4_OVERLAY_FLUSH_RGB2;
 default: return 0;
 }
}
