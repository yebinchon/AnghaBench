
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int value; } ;
struct TYPE_4__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ integer; TYPE_1__ package; } ;
struct st_sensor_data {TYPE_3__* mount_matrix; int dev; } ;
struct iio_dev {int num_channels; int dev; } ;
struct iio_chan_spec {int ext_info; } ;
struct acpi_device {int handle; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef scalar_t__ acpi_status ;
struct TYPE_6__ {char** rotation; } ;


 int ACPI_ALLOCATE_BUFFER ;
 struct acpi_device* ACPI_COMPANION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 scalar_t__ AE_NOT_FOUND ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,scalar_t__) ;
 TYPE_3__* devm_kmalloc (int *,int,int ) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int kfree (union acpi_object*) ;
 int mount_matrix_ext_info ;

__attribute__((used)) static int apply_acpi_orientation(struct iio_dev *indio_dev,
      struct iio_chan_spec *channels)
{
 return 0;

}
