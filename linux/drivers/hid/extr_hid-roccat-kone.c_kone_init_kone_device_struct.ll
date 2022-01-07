; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_init_kone_device_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_init_kone_device_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.kone_device = type { %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.kone_device*)* @kone_init_kone_device_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kone_init_kone_device_struct(%struct.usb_device* %0, %struct.kone_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.kone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.kone_device* %1, %struct.kone_device** %5, align 8
  %8 = load %struct.kone_device*, %struct.kone_device** %5, align 8
  %9 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %8, i32 0, i32 3
  %10 = call i32 @mutex_init(i32* %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = load %struct.kone_device*, %struct.kone_device** %5, align 8
  %17 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @kone_get_profile(%struct.usb_device* %15, i32* %21, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %58

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %11

33:                                               ; preds = %11
  %34 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %35 = load %struct.kone_device*, %struct.kone_device** %5, align 8
  %36 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %35, i32 0, i32 0
  %37 = call i32 @kone_get_settings(%struct.usb_device* %34, %struct.TYPE_2__* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %58

42:                                               ; preds = %33
  %43 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %44 = load %struct.kone_device*, %struct.kone_device** %5, align 8
  %45 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %44, i32 0, i32 1
  %46 = call i32 @kone_get_firmware_version(%struct.usb_device* %43, i32* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %58

51:                                               ; preds = %42
  %52 = load %struct.kone_device*, %struct.kone_device** %5, align 8
  %53 = load %struct.kone_device*, %struct.kone_device** %5, align 8
  %54 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @kone_profile_activated(%struct.kone_device* %52, i32 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %51, %49, %40, %27
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kone_get_profile(%struct.usb_device*, i32*, i32) #1

declare dso_local i32 @kone_get_settings(%struct.usb_device*, %struct.TYPE_2__*) #1

declare dso_local i32 @kone_get_firmware_version(%struct.usb_device*, i32*) #1

declare dso_local i32 @kone_profile_activated(%struct.kone_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
