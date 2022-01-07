
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_frontbuffer {int bits; } ;
typedef enum fb_op_origin { ____Placeholder_fb_op_origin } fb_op_origin ;


 int __intel_fb_flush (struct intel_frontbuffer*,int,unsigned int) ;
 unsigned int atomic_read (int *) ;

__attribute__((used)) static inline void intel_frontbuffer_flush(struct intel_frontbuffer *front,
        enum fb_op_origin origin)
{
 unsigned int frontbuffer_bits;

 if (!front)
  return;

 frontbuffer_bits = atomic_read(&front->bits);
 if (!frontbuffer_bits)
  return;

 __intel_fb_flush(front, origin, frontbuffer_bits);
}
