
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i40iw_cq_uk {int cq_ring; int shadow_area; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_RING_GETCURRENT_HEAD (int ) ;
 int I40IW_RING_MOVE_TAIL_BY_COUNT (int ,int ) ;
 int set_64bit_val (int ,int ,int ) ;

__attribute__((used)) static enum i40iw_status_code i40iw_cq_post_entries(struct i40iw_cq_uk *cq,
          u8 count)
{
 I40IW_RING_MOVE_TAIL_BY_COUNT(cq->cq_ring, count);
 set_64bit_val(cq->shadow_area, 0,
        I40IW_RING_GETCURRENT_HEAD(cq->cq_ring));
 return 0;
}
