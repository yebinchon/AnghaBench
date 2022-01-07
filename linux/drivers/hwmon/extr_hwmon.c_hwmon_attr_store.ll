; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_hwmon_attr_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_hwmon_attr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hwmon_device_attribute = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.device*, i32, i32, i64, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @hwmon_attr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwmon_attr_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hwmon_device_attribute*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %14 = call %struct.hwmon_device_attribute* @to_hwmon_attr(%struct.device_attribute* %13)
  store %struct.hwmon_device_attribute* %14, %struct.hwmon_device_attribute** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtol(i8* %15, i32 10, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %59

21:                                               ; preds = %4
  %22 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %10, align 8
  %23 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.device*, i32, i32, i64, i64)*, i32 (%struct.device*, i32, i32, i64, i64)** %25, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %10, align 8
  %29 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %10, align 8
  %32 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %10, align 8
  %35 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 %26(%struct.device* %27, i32 %30, i32 %33, i64 %36, i64 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %21
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %59

43:                                               ; preds = %21
  %44 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %10, align 8
  %45 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %10, align 8
  %48 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @hwmon_attr_base(i32 %49)
  %51 = add nsw i64 %46, %50
  %52 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %10, align 8
  %53 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @trace_hwmon_attr_store(i64 %51, i32 %54, i64 %55)
  %57 = load i64, i64* %9, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %43, %41, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.hwmon_device_attribute* @to_hwmon_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @trace_hwmon_attr_store(i64, i32, i64) #1

declare dso_local i64 @hwmon_attr_base(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
