; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-koneplus.c_koneplus_init_koneplus_device_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-koneplus.c_koneplus_init_koneplus_device_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.koneplus_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.koneplus_device*)* @koneplus_init_koneplus_device_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @koneplus_init_koneplus_device_struct(%struct.usb_device* %0, %struct.koneplus_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.koneplus_device*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.koneplus_device* %1, %struct.koneplus_device** %5, align 8
  %7 = load %struct.koneplus_device*, %struct.koneplus_device** %5, align 8
  %8 = getelementptr inbounds %struct.koneplus_device, %struct.koneplus_device* %7, i32 0, i32 0
  %9 = call i32 @mutex_init(i32* %8)
  %10 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %11 = call i32 @koneplus_get_actual_profile(%struct.usb_device* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.koneplus_device*, %struct.koneplus_device** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @koneplus_profile_activated(%struct.koneplus_device* %17, i32 %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %14
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @koneplus_get_actual_profile(%struct.usb_device*) #1

declare dso_local i32 @koneplus_profile_activated(%struct.koneplus_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
