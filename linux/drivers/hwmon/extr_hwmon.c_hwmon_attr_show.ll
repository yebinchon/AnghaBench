; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_hwmon_attr_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_hwmon_attr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hwmon_device_attribute = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.device*, i32, i32, i64, i64*)* }

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @hwmon_attr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwmon_attr_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hwmon_device_attribute*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %12 = call %struct.hwmon_device_attribute* @to_hwmon_attr(%struct.device_attribute* %11)
  store %struct.hwmon_device_attribute* %12, %struct.hwmon_device_attribute** %8, align 8
  %13 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %8, align 8
  %14 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.device*, i32, i32, i64, i64*)*, i32 (%struct.device*, i32, i32, i64, i64*)** %16, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %8, align 8
  %20 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %8, align 8
  %23 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %8, align 8
  %26 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 %17(%struct.device* %18, i32 %21, i32 %24, i64 %27, i64* %9)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %3
  %34 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %8, align 8
  %35 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %8, align 8
  %38 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @hwmon_attr_base(i32 %39)
  %41 = add nsw i64 %36, %40
  %42 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %8, align 8
  %43 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @trace_hwmon_attr_show(i64 %41, i32 %44, i64 %45)
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %33, %31
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.hwmon_device_attribute* @to_hwmon_attr(%struct.device_attribute*) #1

declare dso_local i32 @trace_hwmon_attr_show(i64, i32, i64) #1

declare dso_local i64 @hwmon_attr_base(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
