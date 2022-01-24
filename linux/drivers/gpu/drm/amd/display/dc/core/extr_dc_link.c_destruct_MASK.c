#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dc_link {int sink_count; scalar_t__* remote_sinks; scalar_t__ local_sink; TYPE_2__* link_enc; scalar_t__ ddc; int /*<<< orphan*/ * hpd_gpio; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy ) (TYPE_2__**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 

__attribute__((used)) static void FUNC5(struct dc_link *link)
{
	int i;

	if (link->hpd_gpio != NULL) {
		FUNC1(link->hpd_gpio);
		FUNC2(&link->hpd_gpio);
		link->hpd_gpio = NULL;
	}

	if (link->ddc)
		FUNC0(&link->ddc);

	if(link->link_enc)
		link->link_enc->funcs->destroy(&link->link_enc);

	if (link->local_sink)
		FUNC3(link->local_sink);

	for (i = 0; i < link->sink_count; ++i)
		FUNC3(link->remote_sinks[i]);
}