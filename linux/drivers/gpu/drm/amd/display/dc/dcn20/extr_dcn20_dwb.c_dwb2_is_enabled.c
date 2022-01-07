
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwbc {int dummy; } ;
struct dcn20_dwbc {int dummy; } ;


 int CNV_FRAME_CAPTURE_EN ;
 int CNV_MODE ;
 int REG_GET (int ,int ,unsigned int*) ;
 struct dcn20_dwbc* TO_DCN20_DWBC (struct dwbc*) ;
 int WB_ENABLE ;

bool dwb2_is_enabled(struct dwbc *dwbc)
{
 struct dcn20_dwbc *dwbc20 = TO_DCN20_DWBC(dwbc);
 unsigned int wb_enabled = 0;
 unsigned int cnv_frame_capture_en = 0;

 REG_GET(WB_ENABLE, WB_ENABLE, &wb_enabled);
 REG_GET(CNV_MODE, CNV_FRAME_CAPTURE_EN, &cnv_frame_capture_en);

 return ((wb_enabled != 0) && (cnv_frame_capture_en != 0));
}
