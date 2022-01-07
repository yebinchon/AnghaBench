; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltq-cputemp.c_ltq_cputemp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltq-cputemp.c_ltq_cputemp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.device = type { i32 }

@SOC_TYPE_VR9_2 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ltq_cputemp_disable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ltq_cputemp\00", align 1
@ltq_chip_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to register as hwmon device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ltq_cputemp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_cputemp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i64 (...) @ltq_soc_type()
  %7 = load i64, i64* @SOC_TYPE_VR9_2, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @ltq_cputemp_disable, align 4
  %16 = call i32 @devm_add_action(i32* %14, i32 %15, i32* null)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %12
  %22 = call i32 (...) @ltq_cputemp_enable()
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call %struct.device* @devm_hwmon_device_register_with_info(i32* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32* @ltq_chip_info, i32* null)
  store %struct.device* %25, %struct.device** %4, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i64 @IS_ERR(%struct.device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @PTR_ERR(%struct.device* %33)
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %29, %19, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @ltq_soc_type(...) #1

declare dso_local i32 @devm_add_action(i32*, i32, i32*) #1

declare dso_local i32 @ltq_cputemp_enable(...) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
