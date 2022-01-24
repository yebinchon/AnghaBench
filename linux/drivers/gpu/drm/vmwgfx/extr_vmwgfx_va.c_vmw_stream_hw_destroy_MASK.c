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
struct vmw_stream {int /*<<< orphan*/  stream_id; } ;
struct vmw_resource {struct vmw_private* dev_priv; } ;
struct vmw_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 struct vmw_stream* FUNC2 (struct vmw_resource*) ; 

__attribute__((used)) static void FUNC3(struct vmw_resource *res)
{
	struct vmw_private *dev_priv = res->dev_priv;
	struct vmw_stream *stream = FUNC2(res);
	int ret;

	ret = FUNC1(dev_priv, stream->stream_id);
	FUNC0(ret != 0);
}