
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int dummy; } ;


 int kfree (void*) ;

__attribute__((used)) static void complete_agent_reset_write_no_wait(struct fw_card *card,
  int rcode, void *payload, size_t length, void *data)
{
 kfree(data);
}
