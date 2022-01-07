; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_raw_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_raw_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i8, i32*, i64, i8, i32)* @usbhid_raw_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_raw_request(%struct.hid_device* %0, i8 zeroext %1, i32* %2, i64 %3, i8 zeroext %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store i8 %1, i8* %9, align 1
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8 %4, i8* %12, align 1
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %29 [
    i32 129, label %15
    i32 128, label %22
  ]

15:                                               ; preds = %6
  %16 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %17 = load i8, i8* %9, align 1
  %18 = load i32*, i32** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i8, i8* %12, align 1
  %21 = call i32 @usbhid_get_raw_report(%struct.hid_device* %16, i8 zeroext %17, i32* %18, i64 %19, i8 zeroext %20)
  store i32 %21, i32* %7, align 4
  br label %32

22:                                               ; preds = %6
  %23 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %24 = load i8, i8* %9, align 1
  %25 = load i32*, i32** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i8, i8* %12, align 1
  %28 = call i32 @usbhid_set_raw_report(%struct.hid_device* %23, i8 zeroext %24, i32* %25, i64 %26, i8 zeroext %27)
  store i32 %28, i32* %7, align 4
  br label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %22, %15
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @usbhid_get_raw_report(%struct.hid_device*, i8 zeroext, i32*, i64, i8 zeroext) #1

declare dso_local i32 @usbhid_set_raw_report(%struct.hid_device*, i8 zeroext, i32*, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
