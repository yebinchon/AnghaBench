
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_tune_settings {int min_delay_ms; } ;
struct dvb_frontend {int dummy; } ;



__attribute__((used)) static int as102_fe_get_tune_settings(struct dvb_frontend *fe,
   struct dvb_frontend_tune_settings *settings) {

 settings->min_delay_ms = 1000;

 return 0;
}
