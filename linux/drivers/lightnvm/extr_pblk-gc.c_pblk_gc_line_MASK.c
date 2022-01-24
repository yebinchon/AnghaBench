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
struct pblk_line_ws {int /*<<< orphan*/  ws; struct pblk_line* line; struct pblk* pblk; } ;
struct pblk_line {int /*<<< orphan*/  id; } ;
struct pblk_gc {int /*<<< orphan*/  gc_reader_wq; int /*<<< orphan*/  pipeline_gc; } ;
struct pblk {struct pblk_gc gc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pblk_line_ws* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pblk_gc_line_prepare_ws ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct pblk *pblk, struct pblk_line *line)
{
	struct pblk_gc *gc = &pblk->gc;
	struct pblk_line_ws *line_ws;

	FUNC3(pblk, "line '%d' being reclaimed for GC\n", line->id);

	line_ws = FUNC2(sizeof(struct pblk_line_ws), GFP_KERNEL);
	if (!line_ws)
		return -ENOMEM;

	line_ws->pblk = pblk;
	line_ws->line = line;

	FUNC1(&gc->pipeline_gc);
	FUNC0(&line_ws->ws, pblk_gc_line_prepare_ws);
	FUNC4(gc->gc_reader_wq, &line_ws->ws);

	return 0;
}