
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_tune_settings {int min_delay_ms; } ;
struct dvb_frontend {int dummy; } ;


 int dbg_info (char*) ;

__attribute__((used)) static int lgdt3306a_get_tune_settings(struct dvb_frontend *fe,
           struct dvb_frontend_tune_settings
           *fe_tune_settings)
{
 fe_tune_settings->min_delay_ms = 100;
 dbg_info("\n");
 return 0;
}
