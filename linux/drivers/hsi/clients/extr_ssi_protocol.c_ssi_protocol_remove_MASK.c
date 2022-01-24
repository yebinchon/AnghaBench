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
struct ssi_protocol {int /*<<< orphan*/  netdev; int /*<<< orphan*/  link; } ;
struct hsi_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct ssi_protocol* FUNC0 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct hsi_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ssi_protocol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ssi_protocol*) ; 
 struct hsi_client* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct hsi_client *cl = FUNC5(dev);
	struct ssi_protocol *ssi = FUNC0(cl);

	FUNC3(&ssi->link);
	FUNC6(ssi->netdev);
	FUNC4(ssi);
	FUNC1(cl, NULL);
	FUNC2(ssi);

	return 0;
}