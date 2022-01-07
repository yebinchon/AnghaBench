
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int tagged_supported; } ;


 int scsi_change_queue_depth (struct scsi_device*,int) ;

__attribute__((used)) static int
srp_change_queue_depth(struct scsi_device *sdev, int qdepth)
{
 if (!sdev->tagged_supported)
  qdepth = 1;
 return scsi_change_queue_depth(sdev, qdepth);
}
