
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lbah; int lbam; int lbal; int nsect; } ;
struct TYPE_4__ {int command; int device; int lbah; int lbam; int lbal; int nsect; int feature; } ;
struct ide_cmd {TYPE_1__ hob; TYPE_2__ tf; } ;


 int printk (char*,char const*,int ,int ,int ,int ,...) ;

void ide_tf_dump(const char *s, struct ide_cmd *cmd)
{
}
