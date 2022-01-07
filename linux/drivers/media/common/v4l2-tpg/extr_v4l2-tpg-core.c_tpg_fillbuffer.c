
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
typedef int u8 ;
struct tpg_data {int buffers; } ;


 scalar_t__ tpg_calc_plane_size (struct tpg_data*,unsigned int) ;
 int tpg_fill_plane_buffer (struct tpg_data*,int ,unsigned int,int *) ;
 unsigned int tpg_g_planes (struct tpg_data*) ;

void tpg_fillbuffer(struct tpg_data *tpg, v4l2_std_id std, unsigned p, u8 *vbuf)
{
 unsigned offset = 0;
 unsigned i;

 if (tpg->buffers > 1) {
  tpg_fill_plane_buffer(tpg, std, p, vbuf);
  return;
 }

 for (i = 0; i < tpg_g_planes(tpg); i++) {
  tpg_fill_plane_buffer(tpg, std, i, vbuf + offset);
  offset += tpg_calc_plane_size(tpg, i);
 }
}
