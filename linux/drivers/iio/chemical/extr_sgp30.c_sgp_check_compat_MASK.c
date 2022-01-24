#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct sgp_version {scalar_t__ major; scalar_t__ minor; } ;
struct sgp_data {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sgp_version*) ; 
 int ENODEV ; 
#define  SGP30 129 
#define  SGPC3 128 
 scalar_t__ FUNC1 (struct sgp_data*) ; 
 scalar_t__ FUNC2 (struct sgp_data*) ; 
 scalar_t__ FUNC3 (struct sgp_data*) ; 
 scalar_t__ FUNC4 (struct sgp_data*) ; 
 scalar_t__ FUNC5 (struct sgp_data*) ; 
 scalar_t__ FUNC6 (struct sgp_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 struct sgp_version* supported_versions_sgp30 ; 
 struct sgp_version* supported_versions_sgpc3 ; 

__attribute__((used)) static int FUNC9(struct sgp_data *data,
			    unsigned int product_id)
{
	const struct sgp_version *supported_versions;
	u16 ix, num_fs;
	u16 product, generation, major, minor;

	/* driver does not match product */
	generation = FUNC2(data);
	if (generation != 0) {
		FUNC7(&data->client->dev,
			"incompatible product generation %d != 0", generation);
		return -ENODEV;
	}

	product = FUNC5(data);
	if (product != product_id) {
		FUNC7(&data->client->dev,
			"sensor reports a different product: 0x%04hx\n",
			product);
		return -ENODEV;
	}

	if (FUNC6(data))
		FUNC8(&data->client->dev, "reserved bit is set\n");

	/* engineering samples are not supported: no interface guarantees */
	if (FUNC1(data))
		return -ENODEV;

	switch (product) {
	case SGP30:
		supported_versions = supported_versions_sgp30;
		num_fs = FUNC0(supported_versions_sgp30);
		break;
	case SGPC3:
		supported_versions = supported_versions_sgpc3;
		num_fs = FUNC0(supported_versions_sgpc3);
		break;
	default:
		return -ENODEV;
	}

	major = FUNC3(data);
	minor = FUNC4(data);
	for (ix = 0; ix < num_fs; ix++) {
		if (major == supported_versions[ix].major &&
		    minor >= supported_versions[ix].minor)
			return 0;
	}
	FUNC7(&data->client->dev, "unsupported sgp version: %d.%d\n",
		major, minor);

	return -ENODEV;
}