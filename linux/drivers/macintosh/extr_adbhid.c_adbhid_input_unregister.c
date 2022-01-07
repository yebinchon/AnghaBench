
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* keycode; int input; } ;


 TYPE_1__** adbhid ;
 int input_unregister_device (int ) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void adbhid_input_unregister(int id)
{
 input_unregister_device(adbhid[id]->input);
 kfree(adbhid[id]->keycode);
 kfree(adbhid[id]);
 adbhid[id] = ((void*)0);
}
