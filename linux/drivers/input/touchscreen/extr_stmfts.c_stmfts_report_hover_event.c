
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct stmfts_data {int input; } ;


 int ABS_DISTANCE ;
 int ABS_X ;
 int ABS_Y ;
 int const STMFTS_MASK_Y_LSB ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void stmfts_report_hover_event(struct stmfts_data *sdata,
          const u8 event[])
{
 u16 x = (event[2] << 4) | (event[4] >> 4);
 u16 y = (event[3] << 4) | (event[4] & STMFTS_MASK_Y_LSB);
 u8 z = event[5];

 input_report_abs(sdata->input, ABS_X, x);
 input_report_abs(sdata->input, ABS_Y, y);
 input_report_abs(sdata->input, ABS_DISTANCE, z);

 input_sync(sdata->input);
}
