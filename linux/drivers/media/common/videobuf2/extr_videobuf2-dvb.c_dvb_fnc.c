
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_dvb {int demux; } ;
struct vb2_buffer {int dummy; } ;


 int dvb_dmx_swfilter (int *,int ,int ) ;
 int vb2_get_plane_payload (struct vb2_buffer*,int ) ;
 int vb2_plane_vaddr (struct vb2_buffer*,int ) ;

__attribute__((used)) static int dvb_fnc(struct vb2_buffer *vb, void *priv)
{
 struct vb2_dvb *dvb = priv;

 dvb_dmx_swfilter(&dvb->demux, vb2_plane_vaddr(vb, 0),
          vb2_get_plane_payload(vb, 0));
 return 0;
}
