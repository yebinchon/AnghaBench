
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ IMS_PCU_PROTOCOL_DLE ;
 scalar_t__ IMS_PCU_PROTOCOL_ETX ;
 scalar_t__ IMS_PCU_PROTOCOL_STX ;

__attribute__((used)) static bool ims_pcu_byte_needs_escape(u8 byte)
{
 return byte == IMS_PCU_PROTOCOL_STX ||
        byte == IMS_PCU_PROTOCOL_ETX ||
        byte == IMS_PCU_PROTOCOL_DLE;
}
