
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transaction_callback_data {int rcode; int done; void* payload; } ;
struct fw_transaction {int split_timeout_timer; } ;
struct fw_card {int dummy; } ;


 int destroy_timer_on_stack (int *) ;
 int fw_send_request (struct fw_card*,struct fw_transaction*,int,int,int,int,unsigned long long,void*,size_t,int ,struct transaction_callback_data*) ;
 int init_completion (int *) ;
 int timer_setup_on_stack (int *,int *,int ) ;
 int transaction_callback ;
 int wait_for_completion (int *) ;

int fw_run_transaction(struct fw_card *card, int tcode, int destination_id,
         int generation, int speed, unsigned long long offset,
         void *payload, size_t length)
{
 struct transaction_callback_data d;
 struct fw_transaction t;

 timer_setup_on_stack(&t.split_timeout_timer, ((void*)0), 0);
 init_completion(&d.done);
 d.payload = payload;
 fw_send_request(card, &t, tcode, destination_id, generation, speed,
   offset, payload, length, transaction_callback, &d);
 wait_for_completion(&d.done);
 destroy_timer_on_stack(&t.split_timeout_timer);

 return d.rcode;
}
