
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef enum dvbfe_algo { ____Placeholder_dvbfe_algo } dvbfe_algo ;


 int DVBFE_ALGO_HW ;

__attribute__((used)) static enum dvbfe_algo mb86a20s_get_frontend_algo(struct dvb_frontend *fe)
{
 return DVBFE_ALGO_HW;
}
