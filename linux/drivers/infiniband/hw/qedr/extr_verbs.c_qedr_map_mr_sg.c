
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct qedr_mr {int info; int dev; scalar_t__ npages; } ;
struct ib_mr {int dummy; } ;


 struct qedr_mr* get_qedr_mr (struct ib_mr*) ;
 int handle_completed_mrs (int ,int *) ;
 int ib_sg_to_pages (struct ib_mr*,struct scatterlist*,int,int *,int ) ;
 int qedr_set_page ;

int qedr_map_mr_sg(struct ib_mr *ibmr, struct scatterlist *sg,
     int sg_nents, unsigned int *sg_offset)
{
 struct qedr_mr *mr = get_qedr_mr(ibmr);

 mr->npages = 0;

 handle_completed_mrs(mr->dev, &mr->info);
 return ib_sg_to_pages(ibmr, sg, sg_nents, ((void*)0), qedr_set_page);
}
