
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int tag_lo; } ;
struct ocrdma_mqe {TYPE_3__ hdr; } ;
struct TYPE_8__ {int head; } ;
struct TYPE_5__ {TYPE_4__ sq; } ;
struct TYPE_6__ {int cmd_done; int tag; } ;
struct ocrdma_dev {TYPE_1__ mq; TYPE_2__ mqe_ctx; } ;


 int ocrdma_copy_cpu_to_le32 (struct ocrdma_mqe*,struct ocrdma_mqe*,int) ;
 struct ocrdma_mqe* ocrdma_get_mqe (struct ocrdma_dev*) ;
 int ocrdma_mq_inc_head (struct ocrdma_dev*) ;
 int ocrdma_ring_mq_db (struct ocrdma_dev*) ;
 int wmb () ;

__attribute__((used)) static void ocrdma_post_mqe(struct ocrdma_dev *dev, struct ocrdma_mqe *cmd)
{
 struct ocrdma_mqe *mqe;

 dev->mqe_ctx.tag = dev->mq.sq.head;
 dev->mqe_ctx.cmd_done = 0;
 mqe = ocrdma_get_mqe(dev);
 cmd->hdr.tag_lo = dev->mq.sq.head;
 ocrdma_copy_cpu_to_le32(mqe, cmd, sizeof(*mqe));

 wmb();
 ocrdma_mq_inc_head(dev);
 ocrdma_ring_mq_db(dev);
}
