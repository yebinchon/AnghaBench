
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_8__ {int address_lo_32b; } ;
struct TYPE_7__ {int int_sel; int data_sel; } ;
struct TYPE_6__ {int tcl1_action_ena; int tc_action_ena; scalar_t__ atc; int cache_policy; int event_index; int event_type; } ;
struct TYPE_5__ {int u32All; } ;
struct pm4_mec_release_mem {scalar_t__ data_lo; int address_hi; TYPE_4__ bitfields4; TYPE_3__ bitfields3; TYPE_2__ bitfields2; TYPE_1__ header; } ;


 int CACHE_FLUSH_AND_INV_TS_EVENT ;
 int IT_RELEASE_MEM ;
 int cache_policy___release_mem__lru ;
 int data_sel___release_mem__send_32_bit_low ;
 int event_index___release_mem__end_of_pipe ;
 int int_sel___release_mem__send_interrupt_after_write_confirm ;
 int memset (int *,int ,int) ;
 int pm_build_pm4_header (int ,int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int pm_release_mem_vi(uint64_t gpu_addr, uint32_t *buffer)
{
 struct pm4_mec_release_mem *packet;

 packet = (struct pm4_mec_release_mem *)buffer;
 memset(buffer, 0, sizeof(*packet));

 packet->header.u32All = pm_build_pm4_header(IT_RELEASE_MEM,
       sizeof(*packet));

 packet->bitfields2.event_type = CACHE_FLUSH_AND_INV_TS_EVENT;
 packet->bitfields2.event_index = event_index___release_mem__end_of_pipe;
 packet->bitfields2.tcl1_action_ena = 1;
 packet->bitfields2.tc_action_ena = 1;
 packet->bitfields2.cache_policy = cache_policy___release_mem__lru;
 packet->bitfields2.atc = 0;

 packet->bitfields3.data_sel = data_sel___release_mem__send_32_bit_low;
 packet->bitfields3.int_sel =
  int_sel___release_mem__send_interrupt_after_write_confirm;

 packet->bitfields4.address_lo_32b = (gpu_addr & 0xffffffff) >> 2;
 packet->address_hi = upper_32_bits(gpu_addr);

 packet->data_lo = 0;

 return 0;
}
