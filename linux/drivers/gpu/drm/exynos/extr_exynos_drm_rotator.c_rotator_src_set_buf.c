
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rot_context {int dummy; } ;
struct TYPE_6__ {int w; int h; int x; int y; } ;
struct TYPE_4__ {int* pitch; int height; } ;
struct exynos_drm_ipp_buffer {int* dma_addr; TYPE_3__ rect; TYPE_2__* format; TYPE_1__ buf; } ;
struct TYPE_5__ {int* cpp; } ;


 int ROT_CROP_POS_X (int ) ;
 int ROT_CROP_POS_Y (int ) ;
 int ROT_SET_BUF_SIZE_H (int ) ;
 int ROT_SET_BUF_SIZE_W (int) ;
 int ROT_SRC_BUF_ADDR (int) ;
 int ROT_SRC_BUF_SIZE ;
 int ROT_SRC_CROP_POS ;
 int ROT_SRC_CROP_SIZE ;
 int ROT_SRC_CROP_SIZE_H (int ) ;
 int ROT_SRC_CROP_SIZE_W (int ) ;
 int rot_write (int,int ) ;

__attribute__((used)) static void rotator_src_set_buf(struct rot_context *rot,
    struct exynos_drm_ipp_buffer *buf)
{
 u32 val;


 val = ROT_SET_BUF_SIZE_H(buf->buf.height) |
       ROT_SET_BUF_SIZE_W(buf->buf.pitch[0] / buf->format->cpp[0]);
 rot_write(val, ROT_SRC_BUF_SIZE);


 val = ROT_CROP_POS_Y(buf->rect.y) | ROT_CROP_POS_X(buf->rect.x);
 rot_write(val, ROT_SRC_CROP_POS);
 val = ROT_SRC_CROP_SIZE_H(buf->rect.h) |
       ROT_SRC_CROP_SIZE_W(buf->rect.w);
 rot_write(val, ROT_SRC_CROP_SIZE);


 rot_write(buf->dma_addr[0], ROT_SRC_BUF_ADDR(0));
 rot_write(buf->dma_addr[1], ROT_SRC_BUF_ADDR(1));
}
