; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.asus_drvdata = type { i64, i64 }

@BATTERY_REPORT_ID = common dso_local global i64 0, align 8
@INPUT_REPORT_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i64*, i32)* @asus_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.asus_drvdata*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %12 = call %struct.asus_drvdata* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.asus_drvdata* %12, %struct.asus_drvdata** %10, align 8
  %13 = load %struct.asus_drvdata*, %struct.asus_drvdata** %10, align 8
  %14 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load i64*, i64** %8, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BATTERY_REPORT_ID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.asus_drvdata*, %struct.asus_drvdata** %10, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @asus_report_battery(%struct.asus_drvdata* %24, i64* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %45

28:                                               ; preds = %17, %4
  %29 = load %struct.asus_drvdata*, %struct.asus_drvdata** %10, align 8
  %30 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load i64*, i64** %8, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @INPUT_REPORT_ID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.asus_drvdata*, %struct.asus_drvdata** %10, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @asus_report_input(%struct.asus_drvdata* %40, i64* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %33, %28
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %39, %23
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.asus_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @asus_report_battery(%struct.asus_drvdata*, i64*, i32) #1

declare dso_local i32 @asus_report_input(%struct.asus_drvdata*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
