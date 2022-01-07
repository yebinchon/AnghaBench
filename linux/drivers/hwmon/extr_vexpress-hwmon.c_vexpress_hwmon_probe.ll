; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vexpress-hwmon.c_vexpress_hwmon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vexpress-hwmon.c_vexpress_hwmon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.of_device_id = type { %struct.vexpress_hwmon_type* }
%struct.vexpress_hwmon_type = type { i32, i32 }
%struct.vexpress_hwmon_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vexpress_hwmon_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vexpress_hwmon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vexpress_hwmon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.vexpress_hwmon_data*, align 8
  %6 = alloca %struct.vexpress_hwmon_type*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.vexpress_hwmon_data* @devm_kzalloc(i32* %8, i32 8, i32 %9)
  store %struct.vexpress_hwmon_data* %10, %struct.vexpress_hwmon_data** %5, align 8
  %11 = load %struct.vexpress_hwmon_data*, %struct.vexpress_hwmon_data** %5, align 8
  %12 = icmp ne %struct.vexpress_hwmon_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.vexpress_hwmon_data*, %struct.vexpress_hwmon_data** %5, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.vexpress_hwmon_data* %18)
  %20 = load i32, i32* @vexpress_hwmon_of_match, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.of_device_id* @of_match_device(i32 %20, i32* %22)
  store %struct.of_device_id* %23, %struct.of_device_id** %4, align 8
  %24 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %25 = icmp ne %struct.of_device_id* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %65

29:                                               ; preds = %16
  %30 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %31 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %30, i32 0, i32 0
  %32 = load %struct.vexpress_hwmon_type*, %struct.vexpress_hwmon_type** %31, align 8
  store %struct.vexpress_hwmon_type* %32, %struct.vexpress_hwmon_type** %6, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @devm_regmap_init_vexpress_config(i32* %34)
  %36 = load %struct.vexpress_hwmon_data*, %struct.vexpress_hwmon_data** %5, align 8
  %37 = getelementptr inbounds %struct.vexpress_hwmon_data, %struct.vexpress_hwmon_data* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vexpress_hwmon_data*, %struct.vexpress_hwmon_data** %5, align 8
  %39 = getelementptr inbounds %struct.vexpress_hwmon_data, %struct.vexpress_hwmon_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct.vexpress_hwmon_data*, %struct.vexpress_hwmon_data** %5, align 8
  %45 = getelementptr inbounds %struct.vexpress_hwmon_data, %struct.vexpress_hwmon_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %65

48:                                               ; preds = %29
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.vexpress_hwmon_type*, %struct.vexpress_hwmon_type** %6, align 8
  %52 = getelementptr inbounds %struct.vexpress_hwmon_type, %struct.vexpress_hwmon_type* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vexpress_hwmon_data*, %struct.vexpress_hwmon_data** %5, align 8
  %55 = load %struct.vexpress_hwmon_type*, %struct.vexpress_hwmon_type** %6, align 8
  %56 = getelementptr inbounds %struct.vexpress_hwmon_type, %struct.vexpress_hwmon_type* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @devm_hwmon_device_register_with_groups(i32* %50, i32 %53, %struct.vexpress_hwmon_data* %54, i32 %57)
  %59 = load %struct.vexpress_hwmon_data*, %struct.vexpress_hwmon_data** %5, align 8
  %60 = getelementptr inbounds %struct.vexpress_hwmon_data, %struct.vexpress_hwmon_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.vexpress_hwmon_data*, %struct.vexpress_hwmon_data** %5, align 8
  %62 = getelementptr inbounds %struct.vexpress_hwmon_data, %struct.vexpress_hwmon_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PTR_ERR_OR_ZERO(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %48, %43, %26, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.vexpress_hwmon_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vexpress_hwmon_data*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local i32 @devm_regmap_init_vexpress_config(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_hwmon_device_register_with_groups(i32*, i32, %struct.vexpress_hwmon_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
