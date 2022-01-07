
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_umad_packet {int list; } ;
struct ib_umad_file {int send_lock; } ;


 int list_del (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void dequeue_send(struct ib_umad_file *file,
    struct ib_umad_packet *packet)
{
 spin_lock_irq(&file->send_lock);
 list_del(&packet->list);
 spin_unlock_irq(&file->send_lock);
}
