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
struct sahara_dev {scalar_t__ version; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SAHARA_VERSION_3 ; 
 int /*<<< orphan*/ * aes_algs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sha_v3_algs ; 
 int /*<<< orphan*/ * sha_v4_algs ; 

__attribute__((used)) static void FUNC3(struct sahara_dev *dev)
{
	unsigned int i;

	for (i = 0; i < FUNC0(aes_algs); i++)
		FUNC2(&aes_algs[i]);

	for (i = 0; i < FUNC0(sha_v3_algs); i++)
		FUNC1(&sha_v3_algs[i]);

	if (dev->version > SAHARA_VERSION_3)
		for (i = 0; i < FUNC0(sha_v4_algs); i++)
			FUNC1(&sha_v4_algs[i]);
}