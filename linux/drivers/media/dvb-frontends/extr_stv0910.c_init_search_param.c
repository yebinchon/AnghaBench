
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv {int dummy; } ;
struct dtv_frontend_properties {int dummy; } ;


 int FILTER_EN ;
 int FORCE_CONTINUOUS ;
 int FRAME_MODE ;
 int HYSTERESIS_THRESHOLD ;
 int ISIOBS_MODE ;
 int SET_FIELD (int ,int) ;
 int SET_REG (int ,int) ;
 int TSDEL_SYNCBYTE ;
 int TSFIFO_EMBINDVB ;
 int TSINS_TOKEN ;
 int TSOUT_NOSYNC ;
 int UPLCCST0 ;
 int set_stream_modes (struct stv*,struct dtv_frontend_properties*) ;

__attribute__((used)) static int init_search_param(struct stv *state,
        struct dtv_frontend_properties *p)
{
 SET_FIELD(FORCE_CONTINUOUS, 0);
 SET_FIELD(FRAME_MODE, 0);
 SET_FIELD(FILTER_EN, 0);
 SET_FIELD(TSOUT_NOSYNC, 0);
 SET_FIELD(TSFIFO_EMBINDVB, 0);
 SET_FIELD(TSDEL_SYNCBYTE, 0);
 SET_REG(UPLCCST0, 0xe0);
 SET_FIELD(TSINS_TOKEN, 0);
 SET_FIELD(HYSTERESIS_THRESHOLD, 0);
 SET_FIELD(ISIOBS_MODE, 1);

 set_stream_modes(state, p);
 return 0;
}
