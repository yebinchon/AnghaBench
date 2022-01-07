; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1668.c_max1668_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1668.c_max1668_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device, %struct.i2c_adapter* }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.max1668_data = type { i64, i32**, i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max1668_group_common = common dso_local global i32 0, align 4
@max1668 = common dso_local global i64 0, align 8
@max1989 = common dso_local global i64 0, align 8
@max1668_group_unique = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max1668_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1668_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.max1668_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %17 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %75

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.max1668_data* @devm_kzalloc(%struct.device* %23, i32 32, i32 %24)
  store %struct.max1668_data* %25, %struct.max1668_data** %9, align 8
  %26 = load %struct.max1668_data*, %struct.max1668_data** %9, align 8
  %27 = icmp ne %struct.max1668_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %75

31:                                               ; preds = %22
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.max1668_data*, %struct.max1668_data** %9, align 8
  %34 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %33, i32 0, i32 3
  store %struct.i2c_client* %32, %struct.i2c_client** %34, align 8
  %35 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.max1668_data*, %struct.max1668_data** %9, align 8
  %39 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.max1668_data*, %struct.max1668_data** %9, align 8
  %41 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %40, i32 0, i32 2
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.max1668_data*, %struct.max1668_data** %9, align 8
  %44 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  store i32* @max1668_group_common, i32** %46, align 8
  %47 = load %struct.max1668_data*, %struct.max1668_data** %9, align 8
  %48 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @max1668, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %31
  %53 = load %struct.max1668_data*, %struct.max1668_data** %9, align 8
  %54 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @max1989, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52, %31
  %59 = load %struct.max1668_data*, %struct.max1668_data** %9, align 8
  %60 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %59, i32 0, i32 1
  %61 = load i32**, i32*** %60, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 1
  store i32* @max1668_group_unique, i32** %62, align 8
  br label %63

63:                                               ; preds = %58, %52
  %64 = load %struct.device*, %struct.device** %7, align 8
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.max1668_data*, %struct.max1668_data** %9, align 8
  %69 = load %struct.max1668_data*, %struct.max1668_data** %9, align 8
  %70 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %69, i32 0, i32 1
  %71 = load i32**, i32*** %70, align 8
  %72 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %64, i32 %67, %struct.max1668_data* %68, i32** %71)
  store %struct.device* %72, %struct.device** %8, align 8
  %73 = load %struct.device*, %struct.device** %8, align 8
  %74 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %63, %28, %19
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.max1668_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.max1668_data*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
