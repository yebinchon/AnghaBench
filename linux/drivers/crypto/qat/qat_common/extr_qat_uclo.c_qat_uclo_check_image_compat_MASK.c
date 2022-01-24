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
struct icp_qat_uof_objtable {scalar_t__ entry_num; } ;
struct icp_qat_uof_image {int numpages; int /*<<< orphan*/  ae_mode; } ;
struct icp_qat_uof_encap_obj {scalar_t__ beg_uof; } ;
struct icp_qat_uof_code_page {scalar_t__ neigh_reg_tab_offset; scalar_t__ imp_expr_tab_offset; scalar_t__ imp_var_tab_offset; scalar_t__ uc_var_tab_offset; } ;

/* Variables and functions */
 unsigned int EFAULT ; 
 unsigned int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static unsigned int
FUNC3(struct icp_qat_uof_encap_obj *encap_uof_obj,
			    struct icp_qat_uof_image *image)
{
	struct icp_qat_uof_objtable *uc_var_tab, *imp_var_tab, *imp_expr_tab;
	struct icp_qat_uof_objtable *neigh_reg_tab;
	struct icp_qat_uof_code_page *code_page;

	code_page = (struct icp_qat_uof_code_page *)
			((char *)image + sizeof(struct icp_qat_uof_image));
	uc_var_tab = (struct icp_qat_uof_objtable *)(encap_uof_obj->beg_uof +
		     code_page->uc_var_tab_offset);
	imp_var_tab = (struct icp_qat_uof_objtable *)(encap_uof_obj->beg_uof +
		      code_page->imp_var_tab_offset);
	imp_expr_tab = (struct icp_qat_uof_objtable *)
		       (encap_uof_obj->beg_uof +
		       code_page->imp_expr_tab_offset);
	if (uc_var_tab->entry_num || imp_var_tab->entry_num ||
	    imp_expr_tab->entry_num) {
		FUNC2("QAT: UOF can't contain imported variable to be parsed\n");
		return -EINVAL;
	}
	neigh_reg_tab = (struct icp_qat_uof_objtable *)
			(encap_uof_obj->beg_uof +
			code_page->neigh_reg_tab_offset);
	if (neigh_reg_tab->entry_num) {
		FUNC2("QAT: UOF can't contain shared control store feature\n");
		return -EINVAL;
	}
	if (image->numpages > 1) {
		FUNC2("QAT: UOF can't contain multiple pages\n");
		return -EINVAL;
	}
	if (FUNC0(image->ae_mode)) {
		FUNC2("QAT: UOF can't use shared control store feature\n");
		return -EFAULT;
	}
	if (FUNC1(image->ae_mode)) {
		FUNC2("QAT: UOF can't use reloadable feature\n");
		return -EFAULT;
	}
	return 0;
}