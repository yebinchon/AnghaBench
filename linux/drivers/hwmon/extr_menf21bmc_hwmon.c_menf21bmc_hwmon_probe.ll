; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_menf21bmc_hwmon.c_menf21bmc_hwmon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_menf21bmc_hwmon.c_menf21bmc_hwmon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.menf21bmc_hwmon = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to read sensor limits\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"menf21bmc\00", align 1
@menf21bmc_hwmon_groups = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"MEN 14F021P00 BMC hwmon device enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @menf21bmc_hwmon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menf21bmc_hwmon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.menf21bmc_hwmon*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.i2c_client* @to_i2c_client(i32 %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.menf21bmc_hwmon* @devm_kzalloc(%struct.TYPE_5__* %14, i32 8, i32 %15)
  store %struct.menf21bmc_hwmon* %16, %struct.menf21bmc_hwmon** %5, align 8
  %17 = load %struct.menf21bmc_hwmon*, %struct.menf21bmc_hwmon** %5, align 8
  %18 = icmp ne %struct.menf21bmc_hwmon* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %51

22:                                               ; preds = %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %24 = load %struct.menf21bmc_hwmon*, %struct.menf21bmc_hwmon** %5, align 8
  %25 = getelementptr inbounds %struct.menf21bmc_hwmon, %struct.menf21bmc_hwmon* %24, i32 0, i32 0
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.menf21bmc_hwmon*, %struct.menf21bmc_hwmon** %5, align 8
  %27 = call i32 @menf21bmc_hwmon_get_volt_limits(%struct.menf21bmc_hwmon* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_5__* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %22
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.menf21bmc_hwmon*, %struct.menf21bmc_hwmon** %5, align 8
  %39 = load i32, i32* @menf21bmc_hwmon_groups, align 4
  %40 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.TYPE_5__* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.menf21bmc_hwmon* %38, i32 %39)
  store %struct.device* %40, %struct.device** %7, align 8
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = call i64 @IS_ERR(%struct.device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = call i32 @PTR_ERR(%struct.device* %45)
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %35
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_info(%struct.TYPE_5__* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %44, %30, %19
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local %struct.menf21bmc_hwmon* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @menf21bmc_hwmon_get_volt_limits(%struct.menf21bmc_hwmon*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.TYPE_5__*, i8*, %struct.menf21bmc_hwmon*, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
