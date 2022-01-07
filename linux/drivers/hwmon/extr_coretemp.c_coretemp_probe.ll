; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_coretemp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_coretemp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.platform_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @coretemp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coretemp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 1
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.platform_data* @devm_kzalloc(%struct.device* %8, i32 8, i32 %9)
  store %struct.platform_data* %10, %struct.platform_data** %5, align 8
  %11 = load %struct.platform_data*, %struct.platform_data** %5, align 8
  %12 = icmp ne %struct.platform_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.platform_data*, %struct.platform_data** %5, align 8
  %21 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.platform_data*, %struct.platform_data** %5, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.platform_data* %23)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* @DRVNAME, align 4
  %27 = load %struct.platform_data*, %struct.platform_data** %5, align 8
  %28 = call i32 @devm_hwmon_device_register_with_groups(%struct.device* %25, i32 %26, %struct.platform_data* %27, i32* null)
  %29 = load %struct.platform_data*, %struct.platform_data** %5, align 8
  %30 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.platform_data*, %struct.platform_data** %5, align 8
  %32 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PTR_ERR_OR_ZERO(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %16, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.platform_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.platform_data*) #1

declare dso_local i32 @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.platform_data*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
