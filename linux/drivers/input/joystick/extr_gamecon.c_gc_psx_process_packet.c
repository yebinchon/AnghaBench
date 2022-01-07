
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_pad {scalar_t__ type; } ;
struct gc {struct gc_pad* pads; } ;


 scalar_t__ GC_DDR ;
 int GC_MAX_DEVICES ;
 scalar_t__ GC_PSX ;
 int GC_PSX_BYTES ;
 int gc_psx_read_packet (struct gc*,unsigned char**,unsigned char*) ;
 int gc_psx_report_one (struct gc_pad*,unsigned char,unsigned char*) ;

__attribute__((used)) static void gc_psx_process_packet(struct gc *gc)
{
 unsigned char data[GC_MAX_DEVICES][GC_PSX_BYTES];
 unsigned char id[GC_MAX_DEVICES];
 struct gc_pad *pad;
 int i;

 gc_psx_read_packet(gc, data, id);

 for (i = 0; i < GC_MAX_DEVICES; i++) {
  pad = &gc->pads[i];
  if (pad->type == GC_PSX || pad->type == GC_DDR)
   gc_psx_report_one(pad, id[i], data[i]);
 }
}
