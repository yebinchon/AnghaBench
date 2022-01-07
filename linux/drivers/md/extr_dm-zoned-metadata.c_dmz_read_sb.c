
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dmz_metadata {TYPE_2__* sb; } ;
struct TYPE_4__ {TYPE_1__* mblk; int block; } ;
struct TYPE_3__ {int page; } ;


 int REQ_OP_READ ;
 int dmz_rdwr_block (struct dmz_metadata*,int ,int ,int ) ;

__attribute__((used)) static int dmz_read_sb(struct dmz_metadata *zmd, unsigned int set)
{
 return dmz_rdwr_block(zmd, REQ_OP_READ, zmd->sb[set].block,
         zmd->sb[set].mblk->page);
}
