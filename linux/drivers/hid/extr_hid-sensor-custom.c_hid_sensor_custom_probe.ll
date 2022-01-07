; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_hid_sensor_custom_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_hid_sensor_custom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.hid_sensor_hub_device* }
%struct.hid_sensor_hub_device = type { i32 }
%struct.hid_sensor_custom = type { %struct.platform_device*, %struct.TYPE_4__, i32, %struct.hid_sensor_hub_device* }
%struct.TYPE_4__ = type { %struct.platform_device*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hid_sensor_capture_sample = common dso_local global i32 0, align 4
@hid_sensor_send_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"callback reg failed\0A\00", align 1
@enable_sensor_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hid_sensor_custom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_sensor_custom_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hid_sensor_custom*, align 8
  %5 = alloca %struct.hid_sensor_hub_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %9, align 8
  store %struct.hid_sensor_hub_device* %10, %struct.hid_sensor_hub_device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.hid_sensor_custom* @devm_kzalloc(%struct.TYPE_5__* %12, i32 40, i32 %13)
  store %struct.hid_sensor_custom* %14, %struct.hid_sensor_custom** %4, align 8
  %15 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %16 = icmp ne %struct.hid_sensor_custom* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %99

20:                                               ; preds = %1
  %21 = load i32, i32* @hid_sensor_capture_sample, align 4
  %22 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %23 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @hid_sensor_send_event, align 4
  %26 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %27 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %31 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.platform_device* %29, %struct.platform_device** %32, align 8
  %33 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %34 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %35 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %34, i32 0, i32 3
  store %struct.hid_sensor_hub_device* %33, %struct.hid_sensor_hub_device** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %38 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %37, i32 0, i32 0
  store %struct.platform_device* %36, %struct.platform_device** %38, align 8
  %39 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %40 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %39, i32 0, i32 2
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %44 = call i32 @platform_set_drvdata(%struct.platform_device* %42, %struct.hid_sensor_custom* %43)
  %45 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %46 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %47 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %50 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %49, i32 0, i32 1
  %51 = call i32 @sensor_hub_register_callback(%struct.hid_sensor_hub_device* %45, i32 %48, %struct.TYPE_4__* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %20
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_err(%struct.TYPE_5__* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %99

59:                                               ; preds = %20
  %60 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %61 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %60, i32 0, i32 0
  %62 = load %struct.platform_device*, %struct.platform_device** %61, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @sysfs_create_group(i32* %64, i32* @enable_sensor_attr_group)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %92

69:                                               ; preds = %59
  %70 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %71 = call i32 @hid_sensor_custom_add_attributes(%struct.hid_sensor_custom* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %85

75:                                               ; preds = %69
  %76 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %77 = call i32 @hid_sensor_custom_dev_if_add(%struct.hid_sensor_custom* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %82

81:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %99

82:                                               ; preds = %80
  %83 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %84 = call i32 @hid_sensor_custom_remove_attributes(%struct.hid_sensor_custom* %83)
  br label %85

85:                                               ; preds = %82, %74
  %86 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %87 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %86, i32 0, i32 0
  %88 = load %struct.platform_device*, %struct.platform_device** %87, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = call i32 @sysfs_remove_group(i32* %90, i32* @enable_sensor_attr_group)
  br label %92

92:                                               ; preds = %85, %68
  %93 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %94 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %95 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @sensor_hub_remove_callback(%struct.hid_sensor_hub_device* %93, i32 %96)
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %92, %81, %54, %17
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.hid_sensor_custom* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hid_sensor_custom*) #1

declare dso_local i32 @sensor_hub_register_callback(%struct.hid_sensor_hub_device*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hid_sensor_custom_add_attributes(%struct.hid_sensor_custom*) #1

declare dso_local i32 @hid_sensor_custom_dev_if_add(%struct.hid_sensor_custom*) #1

declare dso_local i32 @hid_sensor_custom_remove_attributes(%struct.hid_sensor_custom*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @sensor_hub_remove_callback(%struct.hid_sensor_hub_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
