; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max197.c_max197_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max197.c_max197_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.max197_data = type { i32, i32, i64*, i32, i32, %struct.max197_platform_data* }
%struct.max197_platform_data = type { i32* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"no platform data supplied\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"no convert function supplied\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max197 = common dso_local global i32 0, align 4
@MAX197_LIMIT = common dso_local global i32 0, align 4
@MAX199_LIMIT = common dso_local global i32 0, align 4
@MAX197_NUM_CH = common dso_local global i32 0, align 4
@max197_sysfs_group = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"sysfs create group failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"hwmon device register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max197_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max197_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.max197_data*, align 8
  %7 = alloca %struct.max197_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.max197_platform_data* @dev_get_platdata(%struct.TYPE_7__* %10)
  store %struct.max197_platform_data* %11, %struct.max197_platform_data** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call %struct.TYPE_6__* @platform_get_device_id(%struct.platform_device* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.max197_platform_data*, %struct.max197_platform_data** %7, align 8
  %17 = icmp eq %struct.max197_platform_data* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @dev_err(%struct.TYPE_7__* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %125

24:                                               ; preds = %1
  %25 = load %struct.max197_platform_data*, %struct.max197_platform_data** %7, align 8
  %26 = getelementptr inbounds %struct.max197_platform_data, %struct.max197_platform_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(%struct.TYPE_7__* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %125

35:                                               ; preds = %24
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.max197_data* @devm_kzalloc(%struct.TYPE_7__* %37, i32 32, i32 %38)
  store %struct.max197_data* %39, %struct.max197_data** %6, align 8
  %40 = load %struct.max197_data*, %struct.max197_data** %6, align 8
  %41 = icmp ne %struct.max197_data* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %125

45:                                               ; preds = %35
  %46 = load %struct.max197_platform_data*, %struct.max197_platform_data** %7, align 8
  %47 = load %struct.max197_data*, %struct.max197_data** %6, align 8
  %48 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %47, i32 0, i32 5
  store %struct.max197_platform_data* %46, %struct.max197_platform_data** %48, align 8
  %49 = load %struct.max197_data*, %struct.max197_data** %6, align 8
  %50 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %49, i32 0, i32 4
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @max197, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load i32, i32* @MAX197_LIMIT, align 4
  %57 = load %struct.max197_data*, %struct.max197_data** %6, align 8
  %58 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.max197_data*, %struct.max197_data** %6, align 8
  %60 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %67

61:                                               ; preds = %45
  %62 = load i32, i32* @MAX199_LIMIT, align 4
  %63 = load %struct.max197_data*, %struct.max197_data** %6, align 8
  %64 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.max197_data*, %struct.max197_data** %6, align 8
  %66 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %55
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %81, %67
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @MAX197_NUM_CH, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.max197_data*, %struct.max197_data** %6, align 8
  %76 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 %74, i64* %80, align 8
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %68

84:                                               ; preds = %68
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = load %struct.max197_data*, %struct.max197_data** %6, align 8
  %87 = call i32 @platform_set_drvdata(%struct.platform_device* %85, %struct.max197_data* %86)
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = call i32 @sysfs_create_group(i32* %90, i32* @max197_sysfs_group)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_err(%struct.TYPE_7__* %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %125

99:                                               ; preds = %84
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @hwmon_device_register(%struct.TYPE_7__* %101)
  %103 = load %struct.max197_data*, %struct.max197_data** %6, align 8
  %104 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.max197_data*, %struct.max197_data** %6, align 8
  %106 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @IS_ERR(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %99
  %111 = load %struct.max197_data*, %struct.max197_data** %6, align 8
  %112 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @PTR_ERR(i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @dev_err(%struct.TYPE_7__* %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %119

118:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %125

119:                                              ; preds = %110
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = call i32 @sysfs_remove_group(i32* %122, i32* @max197_sysfs_group)
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %119, %118, %94, %42, %29, %18
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.max197_platform_data* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_6__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.max197_data* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max197_data*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_7__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
