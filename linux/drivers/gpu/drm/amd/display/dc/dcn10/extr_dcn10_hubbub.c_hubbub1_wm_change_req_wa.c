
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubbub {int dummy; } ;
struct dcn10_hubbub {int dummy; } ;


 int DCHUBBUB_ARB_WATERMARK_CHANGE_CNTL ;
 int DCHUBBUB_ARB_WATERMARK_CHANGE_REQUEST ;
 int REG_UPDATE_SEQ_2 (int ,int ,int ,int ,int) ;
 struct dcn10_hubbub* TO_DCN10_HUBBUB (struct hubbub*) ;

void hubbub1_wm_change_req_wa(struct hubbub *hubbub)
{
 struct dcn10_hubbub *hubbub1 = TO_DCN10_HUBBUB(hubbub);

 REG_UPDATE_SEQ_2(DCHUBBUB_ARB_WATERMARK_CHANGE_CNTL,
   DCHUBBUB_ARB_WATERMARK_CHANGE_REQUEST, 0,
   DCHUBBUB_ARB_WATERMARK_CHANGE_REQUEST, 1);
}
