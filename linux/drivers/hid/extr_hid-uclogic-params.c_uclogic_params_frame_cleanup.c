
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uclogic_params_frame {int desc_ptr; } ;


 int kfree (int ) ;
 int memset (struct uclogic_params_frame*,int ,int) ;

__attribute__((used)) static void uclogic_params_frame_cleanup(struct uclogic_params_frame *frame)
{
 kfree(frame->desc_ptr);
 memset(frame, 0, sizeof(*frame));
}
