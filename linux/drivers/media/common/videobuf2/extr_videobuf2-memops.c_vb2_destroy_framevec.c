
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_vector {int dummy; } ;


 int frame_vector_destroy (struct frame_vector*) ;
 int put_vaddr_frames (struct frame_vector*) ;

void vb2_destroy_framevec(struct frame_vector *vec)
{
 put_vaddr_frames(vec);
 frame_vector_destroy(vec);
}
