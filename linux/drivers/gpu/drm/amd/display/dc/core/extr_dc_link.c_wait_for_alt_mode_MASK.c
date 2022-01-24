#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dc_link {TYPE_4__* ctx; TYPE_2__* link_enc; } ;
struct TYPE_8__ {int /*<<< orphan*/  logger; } ;
struct TYPE_7__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {int (* is_in_alt_mode ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (unsigned long long,int) ; 
 unsigned long long FUNC3 (TYPE_4__*,unsigned long long,unsigned long long) ; 
 unsigned long long FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 

bool FUNC8(struct dc_link *link)
{

	/**
	 * something is terribly wrong if time out is > 200ms. (5Hz)
	 * 500 microseconds * 400 tries us 200 ms
	 **/
	unsigned int sleep_time_in_microseconds = 500;
	unsigned int tries_allowed = 400;
	bool is_in_alt_mode;
	unsigned long long enter_timestamp;
	unsigned long long finish_timestamp;
	unsigned long long time_taken_in_ns;
	int tries_taken;

	FUNC0(link->ctx->logger);

	if (link->link_enc->funcs->is_in_alt_mode == NULL)
		return true;

	is_in_alt_mode = link->link_enc->funcs->is_in_alt_mode(link->link_enc);
	FUNC1("DP Alt mode state on HPD: %d\n", is_in_alt_mode);

	if (is_in_alt_mode)
		return true;

	enter_timestamp = FUNC4(link->ctx);

	for (tries_taken = 0; tries_taken < tries_allowed; tries_taken++) {
		FUNC7(sleep_time_in_microseconds);
		/* ask the link if alt mode is enabled, if so return ok */
		if (link->link_enc->funcs->is_in_alt_mode(link->link_enc)) {

			finish_timestamp = FUNC4(link->ctx);
			time_taken_in_ns = FUNC3(
				link->ctx, finish_timestamp, enter_timestamp);
			FUNC1("Alt mode entered finished after %llu ms\n",
				       FUNC2(time_taken_in_ns, 1000000));
			return true;
		}

	}
	finish_timestamp = FUNC4(link->ctx);
	time_taken_in_ns = FUNC3(link->ctx, finish_timestamp,
						    enter_timestamp);
	FUNC1("Alt mode has timed out after %llu ms\n",
			FUNC2(time_taken_in_ns, 1000000));
	return false;
}