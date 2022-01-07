; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_as370-hwmon.c_as370_hwmon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_as370-hwmon.c_as370_hwmon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.as370_hwmon = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"as370\00", align 1
@as370_chip_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @as370_hwmon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as370_hwmon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.as370_hwmon*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load %struct.device*, %struct.device** %6, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.as370_hwmon* @devm_kzalloc(%struct.device* %9, i32 4, i32 %10)
  store %struct.as370_hwmon* %11, %struct.as370_hwmon** %5, align 8
  %12 = load %struct.as370_hwmon*, %struct.as370_hwmon** %5, align 8
  %13 = icmp ne %struct.as370_hwmon* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %40

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %18, i32 0)
  %20 = load %struct.as370_hwmon*, %struct.as370_hwmon** %5, align 8
  %21 = getelementptr inbounds %struct.as370_hwmon, %struct.as370_hwmon* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.as370_hwmon*, %struct.as370_hwmon** %5, align 8
  %23 = getelementptr inbounds %struct.as370_hwmon, %struct.as370_hwmon* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.as370_hwmon*, %struct.as370_hwmon** %5, align 8
  %29 = getelementptr inbounds %struct.as370_hwmon, %struct.as370_hwmon* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %40

32:                                               ; preds = %17
  %33 = load %struct.as370_hwmon*, %struct.as370_hwmon** %5, align 8
  %34 = call i32 @init_pvt(%struct.as370_hwmon* %33)
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load %struct.as370_hwmon*, %struct.as370_hwmon** %5, align 8
  %37 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.as370_hwmon* %36, i32* @as370_chip_info, i32* null)
  store %struct.device* %37, %struct.device** %4, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %32, %27, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.as370_hwmon* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @init_pvt(%struct.as370_hwmon*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i8*, %struct.as370_hwmon*, i32*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
