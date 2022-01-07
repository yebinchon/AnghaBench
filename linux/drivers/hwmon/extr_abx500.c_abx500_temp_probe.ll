; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abx500.c_abx500_temp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abx500.c_abx500_temp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.abx500_temp = type { i32, %struct.TYPE_5__, i32, i32, %struct.platform_device* }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gpadc_monitor = common dso_local global i32 0, align 4
@abx500_temp_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Create sysfs group failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Class registration failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @abx500_temp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_temp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.abx500_temp*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.abx500_temp* @devm_kzalloc(%struct.TYPE_6__* %7, i32 48, i32 %8)
  store %struct.abx500_temp* %9, %struct.abx500_temp** %4, align 8
  %10 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %11 = icmp ne %struct.abx500_temp* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %111

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %18 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %17, i32 0, i32 4
  store %struct.platform_device* %16, %struct.platform_device** %18, align 8
  %19 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %20 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %19, i32 0, i32 3
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %23 = call i32 @abx500_hwmon_init(%struct.abx500_temp* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %15
  %27 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %28 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %34 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %40 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38, %32, %26, %15
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %111

46:                                               ; preds = %38
  %47 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %48 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %47, i32 0, i32 2
  %49 = load i32, i32* @gpadc_monitor, align 4
  %50 = call i32 @INIT_DEFERRABLE_WORK(i32* %48, i32 %49)
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %53 = call i32 @platform_set_drvdata(%struct.platform_device* %51, %struct.abx500_temp* %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @sysfs_create_group(i32* %56, i32* @abx500_temp_group)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %46
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @dev_err(%struct.TYPE_6__* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %111

66:                                               ; preds = %46
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @hwmon_device_register(%struct.TYPE_6__* %68)
  %70 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %71 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %73 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @IS_ERR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %66
  %78 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %79 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @PTR_ERR(i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @dev_err(%struct.TYPE_6__* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %105

86:                                               ; preds = %66
  %87 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %88 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = call i32 @setup_irqs(%struct.platform_device* %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %100

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %86
  store i32 0, i32* %2, align 4
  br label %111

100:                                              ; preds = %97
  %101 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %102 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @hwmon_device_unregister(i32 %103)
  br label %105

105:                                              ; preds = %100, %77
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = call i32 @sysfs_remove_group(i32* %108, i32* @abx500_temp_group)
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %105, %99, %60, %44, %12
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.abx500_temp* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @abx500_hwmon_init(%struct.abx500_temp*) #1

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.abx500_temp*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @setup_irqs(%struct.platform_device*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
