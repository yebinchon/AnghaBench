
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct output {int dummy; } ;



 unsigned int HOST1X_OPCODE_EXTEND_ACQUIRE_MLOCK ;
 unsigned int HOST1X_OPCODE_EXTEND_RELEASE_MLOCK ;
 int INVALID_PAYLOAD ;
 int host1x_debug_cont (struct output*,char*,...) ;
 unsigned int hweight16 (unsigned int) ;
 unsigned int hweight8 (unsigned int) ;

__attribute__((used)) static unsigned int show_channel_command(struct output *o, u32 val,
      u32 *payload)
{
 unsigned int mask, subop, num, opcode;

 opcode = val >> 28;

 switch (opcode) {
 case 130:
  mask = val & 0x3f;
  if (mask) {
   host1x_debug_cont(o, "SETCL(class=%03x, offset=%03x, mask=%02x, [",
         val >> 6 & 0x3ff,
         val >> 16 & 0xfff, mask);
   return hweight8(mask);
  }

  host1x_debug_cont(o, "SETCL(class=%03x)\n", val >> 6 & 0x3ff);
  return 0;

 case 137:
  num = val & 0xffff;
  host1x_debug_cont(o, "INCR(offset=%03x, [",
        val >> 16 & 0xfff);
  if (!num)
   host1x_debug_cont(o, "])\n");

  return num;

 case 134:
  num = val & 0xffff;
  host1x_debug_cont(o, "NONINCR(offset=%03x, [",
        val >> 16 & 0xfff);
  if (!num)
   host1x_debug_cont(o, "])\n");

  return num;

 case 135:
  mask = val & 0xffff;
  host1x_debug_cont(o, "MASK(offset=%03x, mask=%03x, [",
        val >> 16 & 0xfff, mask);
  if (!mask)
   host1x_debug_cont(o, "])\n");

  return hweight16(mask);

 case 138:
  host1x_debug_cont(o, "IMM(offset=%03x, data=%03x)\n",
        val >> 16 & 0xfff, val & 0xffff);
  return 0;

 case 132:
  host1x_debug_cont(o, "RESTART(offset=%08x)\n", val << 4);
  return 0;

 case 140:
  host1x_debug_cont(o, "GATHER(offset=%03x, insert=%d, type=%d, count=%04x, addr=[",
        val >> 16 & 0xfff, val >> 15 & 0x1,
        val >> 14 & 0x1, val & 0x3fff);
  return 1;
 case 141:
  subop = val >> 24 & 0xf;
  if (subop == HOST1X_OPCODE_EXTEND_ACQUIRE_MLOCK)
   host1x_debug_cont(o, "ACQUIRE_MLOCK(index=%d)\n",
         val & 0xff);
  else if (subop == HOST1X_OPCODE_EXTEND_RELEASE_MLOCK)
   host1x_debug_cont(o, "RELEASE_MLOCK(index=%d)\n",
         val & 0xff);
  else
   host1x_debug_cont(o, "EXTEND_UNKNOWN(%08x)\n", val);
  return 0;

 default:
  host1x_debug_cont(o, "UNKNOWN\n");
  return 0;
 }
}
