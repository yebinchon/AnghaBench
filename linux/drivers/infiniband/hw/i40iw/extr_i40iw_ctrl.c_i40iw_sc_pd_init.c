
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40iw_sc_pd {int size; int abi_ver; struct i40iw_sc_dev* dev; int pd_id; } ;
struct i40iw_sc_dev {int dummy; } ;



__attribute__((used)) static void i40iw_sc_pd_init(struct i40iw_sc_dev *dev,
        struct i40iw_sc_pd *pd,
        u16 pd_id,
        int abi_ver)
{
 pd->size = sizeof(*pd);
 pd->pd_id = pd_id;
 pd->abi_ver = abi_ver;
 pd->dev = dev;
}
