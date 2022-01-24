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
struct ib_umad_device {int /*<<< orphan*/ * ports; int /*<<< orphan*/  kref; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ *,struct ib_umad_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_umad_device*) ; 
 scalar_t__ FUNC2 (struct ib_device*,int,struct ib_umad_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ib_umad_device* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ports ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*,int) ; 
 int FUNC7 (struct ib_device*) ; 
 int FUNC8 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_umad_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  umad_client ; 

__attribute__((used)) static void FUNC10(struct ib_device *device)
{
	struct ib_umad_device *umad_dev;
	int s, e, i;
	int count = 0;

	s = FUNC8(device);
	e = FUNC7(device);

	umad_dev = FUNC5(FUNC9(umad_dev, ports, e - s + 1), GFP_KERNEL);
	if (!umad_dev)
		return;

	FUNC4(&umad_dev->kref);
	for (i = s; i <= e; ++i) {
		if (!FUNC6(device, i))
			continue;

		if (FUNC2(device, i, umad_dev,
				      &umad_dev->ports[i - s]))
			goto err;

		count++;
	}

	if (!count)
		goto free;

	FUNC0(device, &umad_client, umad_dev);

	return;

err:
	while (--i >= s) {
		if (!FUNC6(device, i))
			continue;

		FUNC3(&umad_dev->ports[i - s]);
	}
free:
	/* balances kref_init */
	FUNC1(umad_dev);
}