; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_hwmon_attr_show_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_hwmon_attr_show_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hwmon_device_attribute = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.device*, i32, i32, i64, i8**)* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @hwmon_attr_show_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwmon_attr_show_string(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hwmon_device_attribute*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %13 = call %struct.hwmon_device_attribute* @to_hwmon_attr(%struct.device_attribute* %12)
  store %struct.hwmon_device_attribute* %13, %struct.hwmon_device_attribute** %8, align 8
  %14 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %8, align 8
  %15 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %8, align 8
  %18 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.device*, i32, i32, i64, i8**)*, i32 (%struct.device*, i32, i32, i64, i8**)** %20, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %8, align 8
  %24 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %8, align 8
  %27 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %8, align 8
  %30 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 %21(%struct.device* %22, i32 %25, i32 %28, i64 %31, i8** %10)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %52

37:                                               ; preds = %3
  %38 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %8, align 8
  %39 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @hwmon_attr_base(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %8, align 8
  %45 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @trace_hwmon_attr_show_string(i64 %43, i32 %46, i8* %47)
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %37, %35
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.hwmon_device_attribute* @to_hwmon_attr(%struct.device_attribute*) #1

declare dso_local i32 @trace_hwmon_attr_show_string(i64, i32, i8*) #1

declare dso_local i64 @hwmon_attr_base(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
