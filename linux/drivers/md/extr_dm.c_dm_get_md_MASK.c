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
struct mapped_device {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_FREEING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int MINORBITS ; 
 struct mapped_device* MINOR_ALLOCED ; 
 scalar_t__ _major ; 
 int /*<<< orphan*/  _minor_idr ; 
 int /*<<< orphan*/  _minor_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mapped_device*) ; 
 struct mapped_device* FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct mapped_device *FUNC10(dev_t dev)
{
	struct mapped_device *md;
	unsigned minor = FUNC1(dev);

	if (FUNC0(dev) != _major || minor >= (1 << MINORBITS))
		return NULL;

	FUNC7(&_minor_lock);

	md = FUNC6(&_minor_idr, minor);
	if (!md || md == MINOR_ALLOCED || (FUNC1(FUNC2(FUNC4(md))) != minor) ||
	    FUNC9(DMF_FREEING, &md->flags) || FUNC3(md)) {
		md = NULL;
		goto out;
	}
	FUNC5(md);
out:
	FUNC8(&_minor_lock);

	return md;
}