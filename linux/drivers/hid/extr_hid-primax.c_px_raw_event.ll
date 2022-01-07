; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-primax.c_px_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-primax.c_px_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }

@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown report type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @px_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @px_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %13 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %57 [
    i32 0, label %15
  ]

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %35, %34, %15
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %10, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %51

20:                                               ; preds = %16
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 224
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 231
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20
  br label %16

35:                                               ; preds = %27
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 224
  %42 = shl i32 1, %41
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 0, i32* %50, align 4
  br label %16

51:                                               ; preds = %16
  %52 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %53 = load i32, i32* @HID_INPUT_REPORT, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @hid_report_raw_event(%struct.hid_device* %52, i32 %53, i32* %54, i32 %55, i32 0)
  store i32 1, i32* %5, align 4
  br label %64

57:                                               ; preds = %4
  %58 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %59 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %60 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @hid_info(%struct.hid_device* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @hid_report_raw_event(%struct.hid_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
