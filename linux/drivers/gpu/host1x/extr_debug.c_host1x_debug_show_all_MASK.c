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
struct seq_file {int /*<<< orphan*/  private; } ;
struct output {struct seq_file* ctx; int /*<<< orphan*/  fn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct output*,int) ; 
 int /*<<< orphan*/  write_to_seqfile ; 

__attribute__((used)) static int FUNC1(struct seq_file *s, void *unused)
{
	struct output o = {
		.fn = write_to_seqfile,
		.ctx = s
	};

	FUNC0(s->private, &o, true);

	return 0;
}