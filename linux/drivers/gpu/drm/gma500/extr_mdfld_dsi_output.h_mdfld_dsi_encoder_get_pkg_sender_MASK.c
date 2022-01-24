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
struct mdfld_dsi_encoder {int dummy; } ;
struct mdfld_dsi_config {int dummy; } ;

/* Variables and functions */
 struct mdfld_dsi_config* FUNC0 (struct mdfld_dsi_encoder*) ; 
 void* FUNC1 (struct mdfld_dsi_config*) ; 

__attribute__((used)) static inline void *FUNC2(
				struct mdfld_dsi_encoder *encoder)
{
	struct mdfld_dsi_config *dsi_config;

	dsi_config = FUNC0(encoder);
	if (!dsi_config)
		return NULL;

	return FUNC1(dsi_config);
}