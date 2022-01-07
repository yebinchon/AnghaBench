; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_hid_raw_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_hid_raw_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@UHID_FEATURE_REPORT = common dso_local global i32 0, align 4
@UHID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@UHID_INPUT_REPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i8, i32*, i64, i8, i32)* @uhid_hid_raw_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_hid_raw_request(%struct.hid_device* %0, i8 zeroext %1, i32* %2, i64 %3, i8 zeroext %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store i8 %1, i8* %9, align 1
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8 %4, i8* %12, align 1
  store i32 %5, i32* %13, align 4
  %15 = load i8, i8* %12, align 1
  %16 = zext i8 %15 to i32
  switch i32 %16, label %23 [
    i32 132, label %17
    i32 130, label %19
    i32 131, label %21
  ]

17:                                               ; preds = %6
  %18 = load i32, i32* @UHID_FEATURE_REPORT, align 4
  store i32 %18, i32* %14, align 4
  br label %26

19:                                               ; preds = %6
  %20 = load i32, i32* @UHID_OUTPUT_REPORT, align 4
  store i32 %20, i32* %14, align 4
  br label %26

21:                                               ; preds = %6
  %22 = load i32, i32* @UHID_INPUT_REPORT, align 4
  store i32 %22, i32* %14, align 4
  br label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %45

26:                                               ; preds = %21, %19, %17
  %27 = load i32, i32* %13, align 4
  switch i32 %27, label %42 [
    i32 129, label %28
    i32 128, label %35
  ]

28:                                               ; preds = %26
  %29 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %30 = load i8, i8* %9, align 1
  %31 = load i32*, i32** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @uhid_hid_get_report(%struct.hid_device* %29, i8 zeroext %30, i32* %31, i64 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %45

35:                                               ; preds = %26
  %36 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %37 = load i8, i8* %9, align 1
  %38 = load i32*, i32** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @uhid_hid_set_report(%struct.hid_device* %36, i8 zeroext %37, i32* %38, i64 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %45

42:                                               ; preds = %26
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %35, %28, %23
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @uhid_hid_get_report(%struct.hid_device*, i8 zeroext, i32*, i64, i32) #1

declare dso_local i32 @uhid_hid_set_report(%struct.hid_device*, i8 zeroext, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
