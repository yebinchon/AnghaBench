; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_spi.c_inv_mpu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_spi.c_inv_mpu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.regmap = type { i32 }
%struct.spi_device_id = type { i8*, i64 }
%struct.acpi_device_id = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@inv_mpu_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to register spi regmap %d\0A\00", align 1
@inv_mpu_i2c_disable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @inv_mpu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_mpu_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.spi_device_id*, align 8
  %6 = alloca %struct.acpi_device_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i8* null, i8** %7, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %9)
  store %struct.spi_device_id* %10, %struct.spi_device_id** %5, align 8
  %11 = icmp ne %struct.spi_device_id* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.spi_device_id*, %struct.spi_device_id** %5, align 8
  %14 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load %struct.spi_device_id*, %struct.spi_device_id** %5, align 8
  %18 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 1
  %29 = call %struct.acpi_device_id* @acpi_match_device(i32 %26, %struct.TYPE_5__* %28)
  store %struct.acpi_device_id* %29, %struct.acpi_device_id** %6, align 8
  %30 = icmp ne %struct.acpi_device_id* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load %struct.acpi_device_id*, %struct.acpi_device_id** %6, align 8
  %33 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  br label %39

36:                                               ; preds = %20
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %63

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %12
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = call %struct.regmap* @devm_regmap_init_spi(%struct.spi_device* %41, i32* @inv_mpu_regmap_config)
  store %struct.regmap* %42, %struct.regmap** %4, align 8
  %43 = load %struct.regmap*, %struct.regmap** %4, align 8
  %44 = call i64 @IS_ERR(%struct.regmap* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 1
  %49 = load %struct.regmap*, %struct.regmap** %4, align 8
  %50 = call i32 @PTR_ERR(%struct.regmap* %49)
  %51 = call i32 @dev_err(%struct.TYPE_5__* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.regmap*, %struct.regmap** %4, align 8
  %53 = call i32 @PTR_ERR(%struct.regmap* %52)
  store i32 %53, i32* %2, align 4
  br label %63

54:                                               ; preds = %40
  %55 = load %struct.regmap*, %struct.regmap** %4, align 8
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* @inv_mpu_i2c_disable, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @inv_mpu_core_probe(%struct.regmap* %55, i32 %58, i8* %59, i32 %60, i32 %61)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %54, %46, %36
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.TYPE_5__*) #1

declare dso_local %struct.regmap* @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @inv_mpu_core_probe(%struct.regmap*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
