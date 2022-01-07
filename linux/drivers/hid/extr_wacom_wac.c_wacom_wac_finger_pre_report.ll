; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_finger_pre_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_finger_pre_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32, %struct.hid_field** }
%struct.hid_field = type { i32, %struct.hid_usage* }
%struct.hid_usage = type { i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { i32, %struct.hid_data }
%struct.hid_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_report*)* @wacom_wac_finger_pre_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_wac_finger_pre_report(%struct.hid_device* %0, %struct.hid_report* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_report*, align 8
  %5 = alloca %struct.wacom*, align 8
  %6 = alloca %struct.wacom_wac*, align 8
  %7 = alloca %struct.hid_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hid_field*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hid_report* %1, %struct.hid_report** %4, align 8
  %13 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %14 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %13)
  store %struct.wacom* %14, %struct.wacom** %5, align 8
  %15 = load %struct.wacom*, %struct.wacom** %5, align 8
  %16 = getelementptr inbounds %struct.wacom, %struct.wacom* %15, i32 0, i32 0
  store %struct.wacom_wac* %16, %struct.wacom_wac** %6, align 8
  %17 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %18 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %17, i32 0, i32 1
  store %struct.hid_data* %18, %struct.hid_data** %7, align 8
  %19 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %20 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %62, %2
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %24 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %21
  %28 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %29 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %28, i32 0, i32 1
  %30 = load %struct.hid_field**, %struct.hid_field*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %30, i64 %32
  %34 = load %struct.hid_field*, %struct.hid_field** %33, align 8
  store %struct.hid_field* %34, %struct.hid_field** %9, align 8
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %58, %27
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.hid_field*, %struct.hid_field** %9, align 8
  %38 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.hid_field*, %struct.hid_field** %9, align 8
  %43 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %42, i32 0, i32 1
  %44 = load %struct.hid_usage*, %struct.hid_usage** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %44, i64 %46
  store %struct.hid_usage* %47, %struct.hid_usage** %11, align 8
  %48 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %49 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @wacom_equivalent_usage(i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  switch i32 %52, label %57 [
    i32 129, label %53
    i32 128, label %53
    i32 130, label %53
    i32 134, label %53
    i32 135, label %53
    i32 133, label %53
    i32 132, label %53
    i32 131, label %53
  ]

53:                                               ; preds = %41, %41, %41, %41, %41, %41, %41, %41
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.hid_data*, %struct.hid_data** %7, align 8
  %56 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %41, %53
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %35

61:                                               ; preds = %35
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %21

65:                                               ; preds = %21
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wacom_equivalent_usage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
