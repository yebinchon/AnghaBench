
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int addr_family; scalar_t__ adapter_id; int dhcp_enabled; scalar_t__ dns_addr; scalar_t__ gate_way; scalar_t__ sub_net; scalar_t__ ip_addr; } ;
struct TYPE_5__ {TYPE_1__ kvp_ip_val; } ;
struct hv_kvp_msg {TYPE_2__ body; } ;
struct TYPE_6__ {int addr_family; scalar_t__ adapter_id; int dhcp_enabled; scalar_t__ dns_addr; scalar_t__ gate_way; scalar_t__ sub_net; scalar_t__ ip_addr; } ;
struct hv_kvp_ip_msg {TYPE_3__ kvp_ip_val; } ;
typedef int __u8 ;




 int MAX_ADAPTER_ID_SIZE ;
 int MAX_GATEWAY_SIZE ;
 int MAX_IP_ADDR_SIZE ;
 int UTF16_LITTLE_ENDIAN ;
 int utf16s_to_utf8s (int *,int ,int ,int *,int ) ;

__attribute__((used)) static void process_ib_ipinfo(void *in_msg, void *out_msg, int op)
{
 struct hv_kvp_ip_msg *in = in_msg;
 struct hv_kvp_msg *out = out_msg;

 switch (op) {
 case 128:



  utf16s_to_utf8s((wchar_t *)in->kvp_ip_val.ip_addr,
    MAX_IP_ADDR_SIZE,
    UTF16_LITTLE_ENDIAN,
    (__u8 *)out->body.kvp_ip_val.ip_addr,
    MAX_IP_ADDR_SIZE);

  utf16s_to_utf8s((wchar_t *)in->kvp_ip_val.sub_net,
    MAX_IP_ADDR_SIZE,
    UTF16_LITTLE_ENDIAN,
    (__u8 *)out->body.kvp_ip_val.sub_net,
    MAX_IP_ADDR_SIZE);

  utf16s_to_utf8s((wchar_t *)in->kvp_ip_val.gate_way,
    MAX_GATEWAY_SIZE,
    UTF16_LITTLE_ENDIAN,
    (__u8 *)out->body.kvp_ip_val.gate_way,
    MAX_GATEWAY_SIZE);

  utf16s_to_utf8s((wchar_t *)in->kvp_ip_val.dns_addr,
    MAX_IP_ADDR_SIZE,
    UTF16_LITTLE_ENDIAN,
    (__u8 *)out->body.kvp_ip_val.dns_addr,
    MAX_IP_ADDR_SIZE);

  out->body.kvp_ip_val.dhcp_enabled = in->kvp_ip_val.dhcp_enabled;



 case 129:
  utf16s_to_utf8s((wchar_t *)in->kvp_ip_val.adapter_id,
    MAX_ADAPTER_ID_SIZE,
    UTF16_LITTLE_ENDIAN,
    (__u8 *)out->body.kvp_ip_val.adapter_id,
    MAX_ADAPTER_ID_SIZE);

  out->body.kvp_ip_val.addr_family = in->kvp_ip_val.addr_family;
 }
}
