; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_read_report_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_read_report_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.device = type { i32 }
%struct.hid_device = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @read_report_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_report_descriptor(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.hid_device*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.kobject*, %struct.kobject** %9, align 8
  %17 = call %struct.device* @kobj_to_dev(%struct.kobject* %16)
  store %struct.device* %17, %struct.device** %14, align 8
  %18 = load %struct.device*, %struct.device** %14, align 8
  %19 = call %struct.hid_device* @to_hid_device(%struct.device* %18)
  store %struct.hid_device* %19, %struct.hid_device** %15, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load %struct.hid_device*, %struct.hid_device** %15, align 8
  %22 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %50

26:                                               ; preds = %6
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.hid_device*, %struct.hid_device** %15, align 8
  %31 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.hid_device*, %struct.hid_device** %15, align 8
  %36 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %12, align 8
  %39 = sub nsw i64 %37, %38
  store i64 %39, i64* %13, align 8
  br label %40

40:                                               ; preds = %34, %26
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.hid_device*, %struct.hid_device** %15, align 8
  %43 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @memcpy(i8* %41, i64 %46, i64 %47)
  %49 = load i64, i64* %13, align 8
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %40, %25
  %51 = load i64, i64* %7, align 8
  ret i64 %51
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
