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
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {int dummy; } ;
struct cdns_dsi_output {int /*<<< orphan*/  bridge; scalar_t__ panel; } ;
struct cdns_dsi_input {int /*<<< orphan*/  bridge; } ;
struct cdns_dsi {struct cdns_dsi_input input; struct cdns_dsi_output output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cdns_dsi* FUNC2 (struct mipi_dsi_host*) ; 

__attribute__((used)) static int FUNC3(struct mipi_dsi_host *host,
			   struct mipi_dsi_device *dev)
{
	struct cdns_dsi *dsi = FUNC2(host);
	struct cdns_dsi_output *output = &dsi->output;
	struct cdns_dsi_input *input = &dsi->input;

	FUNC0(&input->bridge);
	if (output->panel)
		FUNC1(output->bridge);

	return 0;
}