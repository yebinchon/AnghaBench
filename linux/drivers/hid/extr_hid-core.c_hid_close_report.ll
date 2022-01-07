; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_close_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_close_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i64, i64, i64, i32*, i64, i32*, %struct.hid_report_enum* }
%struct.hid_report_enum = type { i32, %struct.hid_report** }
%struct.hid_report = type { i32 }

@HID_REPORT_TYPES = common dso_local global i32 0, align 4
@HID_MAX_IDS = common dso_local global i32 0, align 4
@HID_STAT_PARSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @hid_close_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_close_report(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_report_enum*, align 8
  %6 = alloca %struct.hid_report*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %45, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @HID_REPORT_TYPES, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 7
  %14 = load %struct.hid_report_enum*, %struct.hid_report_enum** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %14, i64 %16
  store %struct.hid_report_enum* %17, %struct.hid_report_enum** %5, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %36, %11
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @HID_MAX_IDS, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load %struct.hid_report_enum*, %struct.hid_report_enum** %5, align 8
  %24 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %23, i32 0, i32 1
  %25 = load %struct.hid_report**, %struct.hid_report*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %25, i64 %27
  %29 = load %struct.hid_report*, %struct.hid_report** %28, align 8
  store %struct.hid_report* %29, %struct.hid_report** %6, align 8
  %30 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %31 = icmp ne %struct.hid_report* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %34 = call i32 @hid_free_report(%struct.hid_report* %33)
  br label %35

35:                                               ; preds = %32, %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %18

39:                                               ; preds = %18
  %40 = load %struct.hid_report_enum*, %struct.hid_report_enum** %5, align 8
  %41 = call i32 @memset(%struct.hid_report_enum* %40, i32 0, i32 16)
  %42 = load %struct.hid_report_enum*, %struct.hid_report_enum** %5, align 8
  %43 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %42, i32 0, i32 0
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %7

48:                                               ; preds = %7
  %49 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %50 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %54 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %53, i32 0, i32 6
  store i32* null, i32** %54, align 8
  %55 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %56 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %58 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @kfree(i32* %59)
  %61 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %62 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %61, i32 0, i32 4
  store i32* null, i32** %62, align 8
  %63 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %64 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %66 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %68 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* @HID_STAT_PARSED, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %72 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  ret void
}

declare dso_local i32 @hid_free_report(%struct.hid_report*) #1

declare dso_local i32 @memset(%struct.hid_report_enum*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
