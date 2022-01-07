
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;
typedef enum dvbfe_search { ____Placeholder_dvbfe_search } dvbfe_search ;


 int DVBFE_ALGO_SEARCH_AGAIN ;
 int DVBFE_ALGO_SEARCH_ERROR ;
 int DVBFE_ALGO_SEARCH_SUCCESS ;
 int FE_HAS_LOCK ;
 int dbg_info (char*,int) ;
 int lgdt3306a_read_status (struct dvb_frontend*,int*) ;
 int lgdt3306a_set_parameters (struct dvb_frontend*) ;

__attribute__((used)) static enum dvbfe_search lgdt3306a_search(struct dvb_frontend *fe)
{
 enum fe_status status = 0;
 int ret;


 ret = lgdt3306a_set_parameters(fe);
 if (ret)
  goto error;

 ret = lgdt3306a_read_status(fe, &status);
 if (ret)
  goto error;


 if (status & FE_HAS_LOCK)
  return DVBFE_ALGO_SEARCH_SUCCESS;
 else
  return DVBFE_ALGO_SEARCH_AGAIN;

error:
 dbg_info("failed (%d)\n", ret);
 return DVBFE_ALGO_SEARCH_ERROR;
}
