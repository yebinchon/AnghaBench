
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vc4_plane_state {int dummy; } ;


 int SCALER_PPF_AGC ;
 int SCALER_PPF_IPHASE ;
 int SCALER_PPF_SCALE ;
 int VC4_SET_FIELD (int,int ) ;
 int vc4_dlist_write (struct vc4_plane_state*,int) ;

__attribute__((used)) static void vc4_write_ppf(struct vc4_plane_state *vc4_state, u32 src, u32 dst)
{
 u32 scale = (1 << 16) * src / dst;

 vc4_dlist_write(vc4_state,
   SCALER_PPF_AGC |
   VC4_SET_FIELD(scale, SCALER_PPF_SCALE) |
   VC4_SET_FIELD(0, SCALER_PPF_IPHASE));
}
