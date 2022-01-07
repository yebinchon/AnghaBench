
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_op; scalar_t__ bi_op_flags; } ;
struct log_c {int header_location; TYPE_1__ io_req; } ;


 int dm_io (TYPE_1__*,int,int *,int *) ;

__attribute__((used)) static int rw_header(struct log_c *lc, int op)
{
 lc->io_req.bi_op = op;
 lc->io_req.bi_op_flags = 0;

 return dm_io(&lc->io_req, 1, &lc->header_location, ((void*)0));
}
