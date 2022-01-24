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
struct fpga_manager_ops {int dummy; } ;
struct fpga_manager {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_fpga_mgr_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct fpga_manager**) ; 
 struct fpga_manager** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fpga_manager**) ; 
 struct fpga_manager* FUNC3 (struct device*,char const*,struct fpga_manager_ops const*,void*) ; 

struct fpga_manager *FUNC4(struct device *dev, const char *name,
					  const struct fpga_manager_ops *mops,
					  void *priv)
{
	struct fpga_manager **ptr, *mgr;

	ptr = FUNC1(devm_fpga_mgr_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return NULL;

	mgr = FUNC3(dev, name, mops, priv);
	if (!mgr) {
		FUNC2(ptr);
	} else {
		*ptr = mgr;
		FUNC0(dev, ptr);
	}

	return mgr;
}