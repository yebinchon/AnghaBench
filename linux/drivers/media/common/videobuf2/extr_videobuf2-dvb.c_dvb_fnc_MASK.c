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
struct vb2_dvb {int /*<<< orphan*/  demux; } ;
struct vb2_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vb2_buffer *vb, void *priv)
{
	struct vb2_dvb *dvb = priv;

	FUNC0(&dvb->demux, FUNC2(vb, 0),
				      FUNC1(vb, 0));
	return 0;
}