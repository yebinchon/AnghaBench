
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_smb_xport {int dummy; } ;


 int rmi_smb_get_version (struct rmi_smb_xport*) ;

__attribute__((used)) static int rmi_smb_enable_smbus_mode(struct rmi_smb_xport *rmi_smb)
{
 int retval;


 retval = rmi_smb_get_version(rmi_smb);
 if (retval < 0)
  return retval;

 return 0;
}
