
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MDP4_OVERLAY_FLUSH_OVLP0 ;
 int MDP4_OVERLAY_FLUSH_OVLP1 ;

__attribute__((used)) static inline uint32_t ovlp2flush(int ovlp)
{
 switch (ovlp) {
 case 0: return MDP4_OVERLAY_FLUSH_OVLP0;
 case 1: return MDP4_OVERLAY_FLUSH_OVLP1;
 default: return 0;
 }
}
