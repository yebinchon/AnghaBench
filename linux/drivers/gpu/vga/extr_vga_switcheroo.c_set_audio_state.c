
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vga_switcheroo_client {int pdev; TYPE_1__* ops; } ;
typedef enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;
typedef enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;
struct TYPE_4__ {int clients; } ;
struct TYPE_3__ {int (* set_gpu_state ) (int ,int) ;} ;


 int ID_BIT_AUDIO ;
 struct vga_switcheroo_client* find_client_from_id (int *,int) ;
 int stub1 (int ,int) ;
 TYPE_2__ vgasr_priv ;

__attribute__((used)) static void set_audio_state(enum vga_switcheroo_client_id id,
       enum vga_switcheroo_state state)
{
 struct vga_switcheroo_client *client;

 client = find_client_from_id(&vgasr_priv.clients, id | ID_BIT_AUDIO);
 if (client)
  client->ops->set_gpu_state(client->pdev, state);
}
