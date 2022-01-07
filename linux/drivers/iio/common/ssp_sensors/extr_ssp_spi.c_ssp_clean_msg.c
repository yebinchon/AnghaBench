
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_msg {struct ssp_msg* buffer; } ;


 int kfree (struct ssp_msg*) ;

__attribute__((used)) static void ssp_clean_msg(struct ssp_msg *m)
{
 kfree(m->buffer);
 kfree(m);
}
