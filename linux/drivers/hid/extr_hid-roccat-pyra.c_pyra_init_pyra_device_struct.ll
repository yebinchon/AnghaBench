; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_init_pyra_device_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_init_pyra_device_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.pyra_device = type { i32*, i32 }
%struct.pyra_settings = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.pyra_device*)* @pyra_init_pyra_device_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pyra_init_pyra_device_struct(%struct.usb_device* %0, %struct.pyra_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.pyra_device*, align 8
  %6 = alloca %struct.pyra_settings, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.pyra_device* %1, %struct.pyra_device** %5, align 8
  %9 = load %struct.pyra_device*, %struct.pyra_device** %5, align 8
  %10 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %9, i32 0, i32 1
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %13 = call i32 @pyra_get_settings(%struct.usb_device* %12, %struct.pyra_settings* %6)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %24 = load %struct.pyra_device*, %struct.pyra_device** %5, align 8
  %25 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pyra_get_profile_settings(%struct.usb_device* %23, i32* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %19

40:                                               ; preds = %19
  %41 = load %struct.pyra_device*, %struct.pyra_device** %5, align 8
  %42 = getelementptr inbounds %struct.pyra_settings, %struct.pyra_settings* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @profile_activated(%struct.pyra_device* %41, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %34, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pyra_get_settings(%struct.usb_device*, %struct.pyra_settings*) #1

declare dso_local i32 @pyra_get_profile_settings(%struct.usb_device*, i32*, i32) #1

declare dso_local i32 @profile_activated(%struct.pyra_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
