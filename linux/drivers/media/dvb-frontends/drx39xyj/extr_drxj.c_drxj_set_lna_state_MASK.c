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
struct drxuio_data {int value; void* uio; } ;
struct drxuio_cfg {int /*<<< orphan*/  mode; void* uio; } ;
struct drx_demod_instance {int dummy; } ;

/* Variables and functions */
 void* DRX_UIO1 ; 
 int /*<<< orphan*/  DRX_UIO_MODE_READWRITE ; 
 int FUNC0 (struct drx_demod_instance*,struct drxuio_cfg*) ; 
 int FUNC1 (struct drx_demod_instance*,struct drxuio_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct drx_demod_instance *demod, bool state)
{
	struct drxuio_cfg uio_cfg;
	struct drxuio_data uio_data;
	int result;

	uio_cfg.uio = DRX_UIO1;
	uio_cfg.mode = DRX_UIO_MODE_READWRITE;
	/* Configure user-I/O #3: enable read/write */
	result = FUNC0(demod, &uio_cfg);
	if (result) {
		FUNC2("Failed to setup LNA GPIO!\n");
		return result;
	}

	uio_data.uio = DRX_UIO1;
	uio_data.value = state;
	result = FUNC1(demod, &uio_data);
	if (result != 0) {
		FUNC2("Failed to %sable LNA!\n",
		       state ? "en" : "dis");
		return result;
	}
	return 0;
}