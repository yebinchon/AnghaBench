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
struct resource {unsigned short start; char* name; int /*<<< orphan*/  flags; int /*<<< orphan*/  end; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  VT8231_EXTENT ; 
 int FUNC0 (struct resource*) ; 
 int /*<<< orphan*/  pdev ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct resource*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(unsigned short address)
{
	struct resource res = {
		.start	= address,
		.end	= address + VT8231_EXTENT - 1,
		.name	= "vt8231",
		.flags	= IORESOURCE_IO,
	};
	int err;

	err = FUNC0(&res);
	if (err)
		goto exit;

	pdev = FUNC3("vt8231", address);
	if (!pdev) {
		err = -ENOMEM;
		FUNC5("Device allocation failed\n");
		goto exit;
	}

	err = FUNC2(pdev, &res, 1);
	if (err) {
		FUNC5("Device resource addition failed (%d)\n", err);
		goto exit_device_put;
	}

	err = FUNC1(pdev);
	if (err) {
		FUNC5("Device addition failed (%d)\n", err);
		goto exit_device_put;
	}

	return 0;

exit_device_put:
	FUNC4(pdev);
exit:
	return err;
}