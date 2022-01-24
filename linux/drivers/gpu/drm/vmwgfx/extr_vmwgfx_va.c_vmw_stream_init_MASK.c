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
struct vmw_resource {int /*<<< orphan*/  dev_priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vmw_stream* FUNC1 (struct vmw_resource*) ; 

__attribute__((used)) static int FUNC2(struct vmw_resource *res, void *data)
{
	struct vmw_stream *stream = FUNC1(res);

	return FUNC0(res->dev_priv, &stream->stream_id);
}