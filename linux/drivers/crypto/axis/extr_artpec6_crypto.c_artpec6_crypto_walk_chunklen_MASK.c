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
struct artpec6_crypto_walk {scalar_t__ offset; TYPE_1__* sg; } ;
struct TYPE_2__ {scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static size_t
FUNC1(const struct artpec6_crypto_walk *awalk)
{
	FUNC0(awalk->sg->length == awalk->offset);

	return awalk->sg->length - awalk->offset;
}