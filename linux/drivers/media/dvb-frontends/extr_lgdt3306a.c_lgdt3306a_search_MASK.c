#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dvb_frontend {int dummy; } ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;
typedef  enum dvbfe_search { ____Placeholder_dvbfe_search } dvbfe_search ;

/* Variables and functions */
 int DVBFE_ALGO_SEARCH_AGAIN ; 
 int DVBFE_ALGO_SEARCH_ERROR ; 
 int DVBFE_ALGO_SEARCH_SUCCESS ; 
 int FE_HAS_LOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct dvb_frontend*,int*) ; 
 int FUNC2 (struct dvb_frontend*) ; 

__attribute__((used)) static enum dvbfe_search FUNC3(struct dvb_frontend *fe)
{
	enum fe_status status = 0;
	int ret;

	/* set frontend */
	ret = FUNC2(fe);
	if (ret)
		goto error;

	ret = FUNC1(fe, &status);
	if (ret)
		goto error;

	/* check if we have a valid signal */
	if (status & FE_HAS_LOCK)
		return DVBFE_ALGO_SEARCH_SUCCESS;
	else
		return DVBFE_ALGO_SEARCH_AGAIN;

error:
	FUNC0("failed (%d)\n", ret);
	return DVBFE_ALGO_SEARCH_ERROR;
}