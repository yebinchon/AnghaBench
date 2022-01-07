
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rot_context {int dummy; } ;
struct TYPE_5__ {int x; int y; } ;
struct TYPE_6__ {int* pitch; int height; } ;
struct exynos_drm_ipp_buffer {int* dma_addr; TYPE_2__ rect; TYPE_1__* format; TYPE_3__ buf; } ;
struct TYPE_4__ {int* cpp; } ;


 int ROT_CROP_POS_X (int ) ;
 int ROT_CROP_POS_Y (int ) ;
 int ROT_DST_BUF_ADDR (int) ;
 int ROT_DST_BUF_SIZE ;
 int ROT_DST_CROP_POS ;
 int ROT_SET_BUF_SIZE_H (int ) ;
 int ROT_SET_BUF_SIZE_W (int) ;
 int rot_write (int,int ) ;

__attribute__((used)) static void rotator_dst_set_buf(struct rot_context *rot,
    struct exynos_drm_ipp_buffer *buf)
{
 u32 val;


 val = ROT_SET_BUF_SIZE_H(buf->buf.height) |
       ROT_SET_BUF_SIZE_W(buf->buf.pitch[0] / buf->format->cpp[0]);
 rot_write(val, ROT_DST_BUF_SIZE);


 val = ROT_CROP_POS_Y(buf->rect.y) | ROT_CROP_POS_X(buf->rect.x);
 rot_write(val, ROT_DST_CROP_POS);


 rot_write(buf->dma_addr[0], ROT_DST_BUF_ADDR(0));
 rot_write(buf->dma_addr[1], ROT_DST_BUF_ADDR(1));
}
