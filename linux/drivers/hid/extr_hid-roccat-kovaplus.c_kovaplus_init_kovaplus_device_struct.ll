; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kovaplus.c_kovaplus_init_kovaplus_device_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kovaplus.c_kovaplus_init_kovaplus_device_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.kovaplus_device = type { i32*, i32*, i32 }

@kovaplus_init_kovaplus_device_struct.wait = internal global i32 70, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.kovaplus_device*)* @kovaplus_init_kovaplus_device_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kovaplus_init_kovaplus_device_struct(%struct.usb_device* %0, %struct.kovaplus_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.kovaplus_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.kovaplus_device* %1, %struct.kovaplus_device** %5, align 8
  %8 = load %struct.kovaplus_device*, %struct.kovaplus_device** %5, align 8
  %9 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %8, i32 0, i32 2
  %10 = call i32 @mutex_init(i32* %9)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %47, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  %15 = load i32, i32* @kovaplus_init_kovaplus_device_struct.wait, align 4
  %16 = call i32 @msleep(i32 %15)
  %17 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %18 = load %struct.kovaplus_device*, %struct.kovaplus_device** %5, align 8
  %19 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @kovaplus_get_profile_settings(%struct.usb_device* %17, i32* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %63

30:                                               ; preds = %14
  %31 = load i32, i32* @kovaplus_init_kovaplus_device_struct.wait, align 4
  %32 = call i32 @msleep(i32 %31)
  %33 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %34 = load %struct.kovaplus_device*, %struct.kovaplus_device** %5, align 8
  %35 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @kovaplus_get_profile_buttons(%struct.usb_device* %33, i32* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %63

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %11

50:                                               ; preds = %11
  %51 = load i32, i32* @kovaplus_init_kovaplus_device_struct.wait, align 4
  %52 = call i32 @msleep(i32 %51)
  %53 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %54 = call i32 @kovaplus_get_actual_profile(%struct.usb_device* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %63

59:                                               ; preds = %50
  %60 = load %struct.kovaplus_device*, %struct.kovaplus_device** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @kovaplus_profile_activated(%struct.kovaplus_device* %60, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %57, %44, %28
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @kovaplus_get_profile_settings(%struct.usb_device*, i32*, i32) #1

declare dso_local i32 @kovaplus_get_profile_buttons(%struct.usb_device*, i32*, i32) #1

declare dso_local i32 @kovaplus_get_actual_profile(%struct.usb_device*) #1

declare dso_local i32 @kovaplus_profile_activated(%struct.kovaplus_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
