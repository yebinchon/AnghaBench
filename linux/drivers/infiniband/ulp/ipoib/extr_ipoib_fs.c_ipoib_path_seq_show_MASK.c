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
struct seq_file {int dummy; } ;
struct ipoib_path_iter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sl; int /*<<< orphan*/  rate; int /*<<< orphan*/  dgid; } ;
struct ipoib_path {TYPE_1__ pathrec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_path_iter*,struct ipoib_path*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char) ; 

__attribute__((used)) static int FUNC7(struct seq_file *file, void *iter_ptr)
{
	struct ipoib_path_iter *iter = iter_ptr;
	char gid_buf[sizeof "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff"];
	struct ipoib_path path;
	int rate;

	if (!iter)
		return 0;

	FUNC3(iter, &path);

	FUNC1(&path.pathrec.dgid, gid_buf);

	FUNC5(file,
		   "GID: %s\n"
		   "  complete: %6s\n",
		   gid_buf, FUNC4(&path.pathrec) ? "yes" : "no");

	if (FUNC4(&path.pathrec)) {
		rate = FUNC2(path.pathrec.rate);

		FUNC5(file,
			   "  DLID:     0x%04x\n"
			   "  SL: %12d\n"
			   "  rate: %8d.%d Gb/sec\n",
			   FUNC0(FUNC4(&path.pathrec)),
			   path.pathrec.sl,
			   rate / 1000, rate % 1000);
	}

	FUNC6(file, '\n');

	return 0;
}