; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus.c_pmbus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus.c_pmbus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { %struct.pmbus_platform_data* }
%struct.pmbus_platform_data = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.pmbus_driver_info = type { i32, i32 }
%struct.pmbus_device_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PMBUS_SKIP_STATUS_CHECK = common dso_local global i32 0, align 4
@pmbus_identify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pmbus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pmbus_driver_info*, align 8
  %7 = alloca %struct.pmbus_platform_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.pmbus_device_info*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store %struct.pmbus_platform_data* null, %struct.pmbus_platform_data** %7, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load %struct.device*, %struct.device** %8, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @devm_kzalloc(%struct.device* %12, i32 8, i32 %13)
  %15 = bitcast i8* %14 to %struct.pmbus_driver_info*
  store %struct.pmbus_driver_info* %15, %struct.pmbus_driver_info** %6, align 8
  %16 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %17 = icmp ne %struct.pmbus_driver_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %62

21:                                               ; preds = %2
  %22 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.pmbus_device_info*
  store %struct.pmbus_device_info* %25, %struct.pmbus_device_info** %9, align 8
  %26 = load %struct.pmbus_device_info*, %struct.pmbus_device_info** %9, align 8
  %27 = getelementptr inbounds %struct.pmbus_device_info, %struct.pmbus_device_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PMBUS_SKIP_STATUS_CHECK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %21
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @devm_kzalloc(%struct.device* %33, i32 4, i32 %34)
  %36 = bitcast i8* %35 to %struct.pmbus_platform_data*
  store %struct.pmbus_platform_data* %36, %struct.pmbus_platform_data** %7, align 8
  %37 = load %struct.pmbus_platform_data*, %struct.pmbus_platform_data** %7, align 8
  %38 = icmp ne %struct.pmbus_platform_data* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %62

42:                                               ; preds = %32
  %43 = load i32, i32* @PMBUS_SKIP_STATUS_CHECK, align 4
  %44 = load %struct.pmbus_platform_data*, %struct.pmbus_platform_data** %7, align 8
  %45 = getelementptr inbounds %struct.pmbus_platform_data, %struct.pmbus_platform_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %21
  %47 = load %struct.pmbus_device_info*, %struct.pmbus_device_info** %9, align 8
  %48 = getelementptr inbounds %struct.pmbus_device_info, %struct.pmbus_device_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %51 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @pmbus_identify, align 4
  %53 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %54 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pmbus_platform_data*, %struct.pmbus_platform_data** %7, align 8
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 0
  store %struct.pmbus_platform_data* %55, %struct.pmbus_platform_data** %57, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %60 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %61 = call i32 @pmbus_do_probe(%struct.i2c_client* %58, %struct.i2c_device_id* %59, %struct.pmbus_driver_info* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %46, %39, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @pmbus_do_probe(%struct.i2c_client*, %struct.i2c_device_id*, %struct.pmbus_driver_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
