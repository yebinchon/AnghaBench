; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_create_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_create_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.s3c_hwmon_chcfg = type { i64 }
%struct.s3c_hwmon_attr = type { %struct.sensor_device_attribute, i32, %struct.sensor_device_attribute, i32 }
%struct.sensor_device_attribute = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"in%d_input\00", align 1
@S_IRUGO = common dso_local global i8* null, align 8
@s3c_hwmon_ch_show = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to create input attribute\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"in%d_label\00", align 1
@s3c_hwmon_label_show = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to create label attribute\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_attr*, i32)* @s3c_hwmon_create_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hwmon_create_attr(%struct.device* %0, %struct.s3c_hwmon_chcfg* %1, %struct.s3c_hwmon_attr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.s3c_hwmon_chcfg*, align 8
  %8 = alloca %struct.s3c_hwmon_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.s3c_hwmon_chcfg* %1, %struct.s3c_hwmon_chcfg** %7, align 8
  store %struct.s3c_hwmon_attr* %2, %struct.s3c_hwmon_attr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.s3c_hwmon_attr*, %struct.s3c_hwmon_attr** %8, align 8
  %13 = getelementptr inbounds %struct.s3c_hwmon_attr, %struct.s3c_hwmon_attr* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @snprintf(i32 %14, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.s3c_hwmon_attr*, %struct.s3c_hwmon_attr** %8, align 8
  %18 = getelementptr inbounds %struct.s3c_hwmon_attr, %struct.s3c_hwmon_attr* %17, i32 0, i32 0
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = call i32 @sysfs_attr_init(%struct.TYPE_4__* %24)
  %26 = load %struct.s3c_hwmon_attr*, %struct.s3c_hwmon_attr** %8, align 8
  %27 = getelementptr inbounds %struct.s3c_hwmon_attr, %struct.s3c_hwmon_attr* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %30 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 8
  %33 = load i8*, i8** @S_IRUGO, align 8
  %34 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %35 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i8* %33, i8** %37, align 8
  %38 = load i32, i32* @s3c_hwmon_ch_show, align 4
  %39 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %40 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %44 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %43, i32 0, i32 1
  %45 = call i32 @device_create_file(%struct.device* %42, %struct.TYPE_5__* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %4
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %105

52:                                               ; preds = %4
  %53 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %7, align 8
  %54 = getelementptr inbounds %struct.s3c_hwmon_chcfg, %struct.s3c_hwmon_chcfg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %103

57:                                               ; preds = %52
  %58 = load %struct.s3c_hwmon_attr*, %struct.s3c_hwmon_attr** %8, align 8
  %59 = getelementptr inbounds %struct.s3c_hwmon_attr, %struct.s3c_hwmon_attr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @snprintf(i32 %60, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load %struct.s3c_hwmon_attr*, %struct.s3c_hwmon_attr** %8, align 8
  %64 = getelementptr inbounds %struct.s3c_hwmon_attr, %struct.s3c_hwmon_attr* %63, i32 0, i32 2
  store %struct.sensor_device_attribute* %64, %struct.sensor_device_attribute** %10, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %67 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %69 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = call i32 @sysfs_attr_init(%struct.TYPE_4__* %70)
  %72 = load %struct.s3c_hwmon_attr*, %struct.s3c_hwmon_attr** %8, align 8
  %73 = getelementptr inbounds %struct.s3c_hwmon_attr, %struct.s3c_hwmon_attr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %76 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 8
  %79 = load i8*, i8** @S_IRUGO, align 8
  %80 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %81 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i8* %79, i8** %83, align 8
  %84 = load i32, i32* @s3c_hwmon_label_show, align 4
  %85 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %86 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %90 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %89, i32 0, i32 1
  %91 = call i32 @device_create_file(%struct.device* %88, %struct.TYPE_5__* %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %57
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = load %struct.s3c_hwmon_attr*, %struct.s3c_hwmon_attr** %8, align 8
  %97 = getelementptr inbounds %struct.s3c_hwmon_attr, %struct.s3c_hwmon_attr* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %97, i32 0, i32 1
  %99 = call i32 @device_remove_file(%struct.device* %95, %struct.TYPE_5__* %98)
  %100 = load %struct.device*, %struct.device** %6, align 8
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %94, %57
  br label %103

103:                                              ; preds = %102, %52
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %48
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_4__*) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @device_remove_file(%struct.device*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
