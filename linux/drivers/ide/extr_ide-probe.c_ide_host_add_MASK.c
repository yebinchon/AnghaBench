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
struct ide_port_info {int dummy; } ;
struct ide_hw {int dummy; } ;
struct ide_host {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ide_host* FUNC0 (struct ide_port_info const*,struct ide_hw**,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ide_host*) ; 
 int FUNC2 (struct ide_host*,struct ide_port_info const*,struct ide_hw**) ; 

int FUNC3(const struct ide_port_info *d, struct ide_hw **hws,
		 unsigned int n_ports, struct ide_host **hostp)
{
	struct ide_host *host;
	int rc;

	host = FUNC0(d, hws, n_ports);
	if (host == NULL)
		return -ENOMEM;

	rc = FUNC2(host, d, hws);
	if (rc) {
		FUNC1(host);
		return rc;
	}

	if (hostp)
		*hostp = host;

	return 0;
}