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
struct smu_baco_context {int state; int /*<<< orphan*/  mutex; } ;
struct smu_context {struct smu_baco_context smu_baco; } ;
typedef  enum smu_baco_state { ____Placeholder_smu_baco_state } smu_baco_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum smu_baco_state FUNC2(struct smu_context *smu)
{
	struct smu_baco_context *smu_baco = &smu->smu_baco;
	enum smu_baco_state baco_state;

	FUNC0(&smu_baco->mutex);
	baco_state = smu_baco->state;
	FUNC1(&smu_baco->mutex);

	return baco_state;
}