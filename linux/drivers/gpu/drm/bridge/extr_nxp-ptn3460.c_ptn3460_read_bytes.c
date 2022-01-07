
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ptn3460_bridge {int client; } ;


 int DRM_ERROR (char*,int) ;
 int i2c_master_recv (int ,int *,int) ;
 int i2c_master_send (int ,char*,int) ;

__attribute__((used)) static int ptn3460_read_bytes(struct ptn3460_bridge *ptn_bridge, char addr,
  u8 *buf, int len)
{
 int ret;

 ret = i2c_master_send(ptn_bridge->client, &addr, 1);
 if (ret <= 0) {
  DRM_ERROR("Failed to send i2c command, ret=%d\n", ret);
  return ret;
 }

 ret = i2c_master_recv(ptn_bridge->client, buf, len);
 if (ret <= 0) {
  DRM_ERROR("Failed to recv i2c data, ret=%d\n", ret);
  return ret;
 }

 return 0;
}
