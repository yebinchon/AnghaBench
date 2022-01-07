
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sg_cnt; } ;
struct TYPE_3__ {scalar_t__ sg_cnt; } ;
struct qup_i2c_dev {scalar_t__ tag_buf_pos; TYPE_2__ brx; TYPE_1__ btx; } ;



__attribute__((used)) static void qup_i2c_bam_clear_tag_buffers(struct qup_i2c_dev *qup)
{
 qup->btx.sg_cnt = 0;
 qup->brx.sg_cnt = 0;
 qup->tag_buf_pos = 0;
}
