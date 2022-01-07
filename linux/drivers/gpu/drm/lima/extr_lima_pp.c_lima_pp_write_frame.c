
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lima_ip {scalar_t__ iomem; } ;


 scalar_t__ LIMA_PP_FRAME ;
 int LIMA_PP_FRAME_REG_NUM ;
 scalar_t__ LIMA_PP_WB (int) ;
 int LIMA_PP_WB_REG_NUM ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void lima_pp_write_frame(struct lima_ip *ip, u32 *frame, u32 *wb)
{
 int i, j, n = 0;

 for (i = 0; i < LIMA_PP_FRAME_REG_NUM; i++)
  writel(frame[i], ip->iomem + LIMA_PP_FRAME + i * 4);

 for (i = 0; i < 3; i++) {
  for (j = 0; j < LIMA_PP_WB_REG_NUM; j++)
   writel(wb[n++], ip->iomem + LIMA_PP_WB(i) + j * 4);
 }
}
