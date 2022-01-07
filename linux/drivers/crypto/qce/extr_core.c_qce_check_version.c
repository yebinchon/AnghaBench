
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qce_device {int pipe_pair_id; int dev; int burst_size; } ;


 int ENODEV ;
 int QCE_BAM_BURST_SIZE ;
 scalar_t__ QCE_MAJOR_VERSION5 ;
 int dev_dbg (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int qce_get_version (struct qce_device*,scalar_t__*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int qce_check_version(struct qce_device *qce)
{
 u32 major, minor, step;

 qce_get_version(qce, &major, &minor, &step);





 if (major != QCE_MAJOR_VERSION5 || minor == 0)
  return -ENODEV;

 qce->burst_size = QCE_BAM_BURST_SIZE;
 qce->pipe_pair_id = 1;

 dev_dbg(qce->dev, "Crypto device found, version %d.%d.%d\n",
  major, minor, step);

 return 0;
}
