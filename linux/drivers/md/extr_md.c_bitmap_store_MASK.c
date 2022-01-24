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
struct mddev {int /*<<< orphan*/  bitmap; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*) ; 
 unsigned long FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct mddev *mddev, const char *buf, size_t len)
{
	char *end;
	unsigned long chunk, end_chunk;
	int err;

	err = FUNC3(mddev);
	if (err)
		return err;
	if (!mddev->bitmap)
		goto out;
	/* buf should be <chunk> <chunk> ... or <chunk>-<chunk> ... (range) */
	while (*buf) {
		chunk = end_chunk = FUNC5(buf, &end, 0);
		if (buf == end) break;
		if (*end == '-') { /* range */
			buf = end + 1;
			end_chunk = FUNC5(buf, &end, 0);
			if (buf == end) break;
		}
		if (*end && !FUNC0(*end)) break;
		FUNC1(mddev->bitmap, chunk, end_chunk);
		buf = FUNC6(end);
	}
	FUNC2(mddev->bitmap); /* flush the bits to disk */
out:
	FUNC4(mddev);
	return len;
}