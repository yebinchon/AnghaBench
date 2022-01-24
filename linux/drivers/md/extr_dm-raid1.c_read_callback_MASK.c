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
struct mirror {TYPE_1__* dev; int /*<<< orphan*/  ms; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DM_RAID1_READ_ERROR ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 struct mirror* FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct mirror*) ; 
 int /*<<< orphan*/  FUNC8 (struct mirror*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(unsigned long error, void *context)
{
	struct bio *bio = context;
	struct mirror *m;

	m = FUNC4(bio);
	FUNC6(bio, NULL);

	if (FUNC9(!error)) {
		FUNC3(bio);
		return;
	}

	FUNC8(m, DM_RAID1_READ_ERROR);

	if (FUNC9(FUNC7(m)) || FUNC10(m->ms, bio)) {
		FUNC1("Read failure on mirror device %s.  "
			     "Trying alternative device.",
			     m->dev->name);
		FUNC11(m->ms, bio, FUNC2(bio));
		return;
	}

	FUNC0("Read failure on mirror device %s.  Failing I/O.",
		    m->dev->name);
	FUNC5(bio);
}