; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpowernv.c_ibmpowernv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpowernv.c_ibmpowernv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.platform_data = type { i32, i64, i64 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ibmpowernv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmpowernv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.platform_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.platform_data* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  store %struct.platform_data* %10, %struct.platform_data** %4, align 8
  %11 = load %struct.platform_data*, %struct.platform_data** %4, align 8
  %12 = icmp ne %struct.platform_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.platform_data*, %struct.platform_data** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.platform_data* %18)
  %20 = load %struct.platform_data*, %struct.platform_data** %4, align 8
  %21 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.platform_data*, %struct.platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i32 @populate_attr_groups(%struct.platform_device* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %48

30:                                               ; preds = %16
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = call i32 @create_device_attrs(%struct.platform_device* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %48

37:                                               ; preds = %30
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* @DRVNAME, align 4
  %41 = load %struct.platform_data*, %struct.platform_data** %4, align 8
  %42 = load %struct.platform_data*, %struct.platform_data** %4, align 8
  %43 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.device* @devm_hwmon_device_register_with_groups(i32* %39, i32 %40, %struct.platform_data* %41, i32 %44)
  store %struct.device* %45, %struct.device** %5, align 8
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %37, %35, %28, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.platform_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.platform_data*) #1

declare dso_local i32 @populate_attr_groups(%struct.platform_device*) #1

declare dso_local i32 @create_device_attrs(%struct.platform_device*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(i32*, i32, %struct.platform_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
