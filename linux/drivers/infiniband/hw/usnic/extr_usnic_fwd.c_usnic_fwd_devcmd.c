
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct usnic_fwd_dev {int lock; } ;
typedef enum vnic_devcmd_cmd { ____Placeholder_vnic_devcmd_cmd } vnic_devcmd_cmd ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usnic_fwd_devcmd_locked (struct usnic_fwd_dev*,int,int,int *,int *) ;

__attribute__((used)) static int usnic_fwd_devcmd(struct usnic_fwd_dev *ufdev, int vnic_idx,
    enum vnic_devcmd_cmd cmd, u64 *a0, u64 *a1)
{
 int status;

 spin_lock(&ufdev->lock);
 status = usnic_fwd_devcmd_locked(ufdev, vnic_idx, cmd, a0, a1);
 spin_unlock(&ufdev->lock);

 return status;
}
