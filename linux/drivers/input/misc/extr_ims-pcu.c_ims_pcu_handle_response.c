
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ims_pcu {int* read_buf; int expected_response; int cmd_done; int read_pos; int cmd_buf_len; int cmd_buf; int ack_id; int setup_complete; } ;



 int complete (int *) ;
 int ims_pcu_report_events (struct ims_pcu*) ;
 int likely (int ) ;
 int memcpy (int ,int*,int ) ;

__attribute__((used)) static void ims_pcu_handle_response(struct ims_pcu *pcu)
{
 switch (pcu->read_buf[0]) {
 case 128:
  if (likely(pcu->setup_complete))
   ims_pcu_report_events(pcu);
  break;

 default:





  if (pcu->read_buf[0] == pcu->expected_response &&
      pcu->read_buf[1] == pcu->ack_id - 1) {

   memcpy(pcu->cmd_buf, pcu->read_buf, pcu->read_pos);
   pcu->cmd_buf_len = pcu->read_pos;
   complete(&pcu->cmd_done);
  }
  break;
 }
}
