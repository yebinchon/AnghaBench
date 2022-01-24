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
struct TYPE_2__ {unsigned char compcode; } ;
union cpt_res_s {TYPE_1__ s; } ;
struct pending_queue {size_t front; int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_count; struct pending_entry* head; } ;
struct pending_qinfo {struct pending_queue* queue; } ;
struct pending_entry {int busy; int /*<<< orphan*/  callback_arg; int /*<<< orphan*/  (* callback ) (unsigned char,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * post_arg; int /*<<< orphan*/ * completion_addr; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct cpt_vf {struct pci_dev* pdev; } ;
struct cpt_info_buffer {unsigned char* alternate_caddr; scalar_t__ extra_time; int /*<<< orphan*/  cptvf; scalar_t__ time_in; } ;

/* Variables and functions */
 unsigned char COMPLETION_CODE_INIT ; 
 int CPT_COMMAND_TIMEOUT ; 
 unsigned char CPT_COMP_E_FAULT ; 
 unsigned char CPT_COMP_E_SWERR ; 
 int HZ ; 
 scalar_t__ TIME_IN_RESET_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cpt_info_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpt_vf*,struct cpt_info_buffer*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct pending_qinfo*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static inline void FUNC10(struct cpt_vf *cptvf,
					 struct pending_qinfo *pqinfo,
					 int qno)
{
	struct pci_dev *pdev = cptvf->pdev;
	struct pending_queue *pqueue = &pqinfo->queue[qno];
	struct pending_entry *pentry = NULL;
	struct cpt_info_buffer *info = NULL;
	union cpt_res_s *status = NULL;
	unsigned char ccode;

	while (1) {
		FUNC5(&pqueue->lock);
		pentry = &pqueue->head[pqueue->front];
		if (FUNC9(!pentry->busy)) {
			FUNC6(&pqueue->lock);
			break;
		}

		info = (struct cpt_info_buffer *)pentry->post_arg;
		if (FUNC9(!info)) {
			FUNC1(&pdev->dev, "Pending Entry post arg NULL\n");
			FUNC4(pqinfo, qno);
			FUNC6(&pqueue->lock);
			continue;
		}

		status = (union cpt_res_s *)pentry->completion_addr;
		ccode = status->s.compcode;
		if ((status->s.compcode == CPT_COMP_E_FAULT) ||
		    (status->s.compcode == CPT_COMP_E_SWERR)) {
			FUNC1(&pdev->dev, "Request failed with %s\n",
				(status->s.compcode == CPT_COMP_E_FAULT) ?
				"DMA Fault" : "Software error");
			pentry->completion_addr = NULL;
			pentry->busy = false;
			FUNC0((&pqueue->pending_count));
			pentry->post_arg = NULL;
			FUNC4(pqinfo, qno);
			FUNC3(cptvf, info);
			FUNC6(&pqueue->lock);
			break;
		} else if (status->s.compcode == COMPLETION_CODE_INIT) {
			/* check for timeout */
			if (FUNC8(jiffies,
					  (info->time_in +
					  (CPT_COMMAND_TIMEOUT * HZ)))) {
				FUNC1(&pdev->dev, "Request timed out");
				pentry->completion_addr = NULL;
				pentry->busy = false;
				FUNC0((&pqueue->pending_count));
				pentry->post_arg = NULL;
				FUNC4(pqinfo, qno);
				FUNC3(cptvf, info);
				FUNC6(&pqueue->lock);
				break;
			} else if ((*info->alternate_caddr ==
				(~COMPLETION_CODE_INIT)) &&
				(info->extra_time < TIME_IN_RESET_COUNT)) {
				info->time_in = jiffies;
				info->extra_time++;
				FUNC6(&pqueue->lock);
				break;
			}
		}

		pentry->completion_addr = NULL;
		pentry->busy = false;
		pentry->post_arg = NULL;
		FUNC0((&pqueue->pending_count));
		FUNC4(pqinfo, qno);
		FUNC6(&pqueue->lock);

		FUNC2(info->cptvf, info);
		/*
		 * Calling callback after we find
		 * that the request has been serviced
		 */
		pentry->callback(ccode, pentry->callback_arg);
	}
}