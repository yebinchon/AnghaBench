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
struct ishtp_cl_data {int /*<<< orphan*/  cl_device; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILENAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct device*,char*,char const**) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC4(struct ishtp_cl_data *client_data,
				char *filename)
{
	int rv;
	const char *val;
	struct device *devc = FUNC2(client_data->cl_device);

	rv = FUNC1(devc, "firmware-name", &val);
	if (rv < 0) {
		FUNC0(devc,
			"Error: ISH firmware-name device property required\n");
		return rv;
	}
	return FUNC3(filename, FILENAME_SIZE, "intel/%s", val);
}