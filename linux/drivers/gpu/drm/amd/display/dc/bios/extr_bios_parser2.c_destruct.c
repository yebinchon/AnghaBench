
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int integrated_info; int bios_local_image; } ;
struct bios_parser {TYPE_1__ base; } ;


 int kfree (int ) ;

__attribute__((used)) static void destruct(struct bios_parser *bp)
{
 kfree(bp->base.bios_local_image);
 kfree(bp->base.integrated_info);
}
