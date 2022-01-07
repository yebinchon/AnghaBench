
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TLS_KEY_CONTEXT_SZ ;

unsigned int keyid_to_addr(int start_addr, int keyid)
{
 return (start_addr + (keyid * TLS_KEY_CONTEXT_SZ)) >> 5;
}
