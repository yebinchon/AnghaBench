; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.cp2112_device = type { i32*, i32, %struct.hid_device* }
%struct.hid_device = type { i32 }

@CP2112_GPIO_SET = common dso_local global i32 0, align 4
@CP2112_GPIO_SET_LENGTH = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"error setting GPIO values: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @cp2112_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp2112_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cp2112_device*, align 8
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.cp2112_device* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.cp2112_device* %12, %struct.cp2112_device** %7, align 8
  %13 = load %struct.cp2112_device*, %struct.cp2112_device** %7, align 8
  %14 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %13, i32 0, i32 2
  %15 = load %struct.hid_device*, %struct.hid_device** %14, align 8
  store %struct.hid_device* %15, %struct.hid_device** %8, align 8
  %16 = load %struct.cp2112_device*, %struct.cp2112_device** %7, align 8
  %17 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load %struct.cp2112_device*, %struct.cp2112_device** %7, align 8
  %20 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* @CP2112_GPIO_SET, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 255, i32 0
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 1, %31
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %36 = load i32, i32* @CP2112_GPIO_SET, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* @CP2112_GPIO_SET_LENGTH, align 4
  %39 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %40 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %41 = call i32 @hid_hw_raw_request(%struct.hid_device* %35, i32 %36, i32* %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %3
  %45 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @hid_err(%struct.hid_device* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %3
  %49 = load %struct.cp2112_device*, %struct.cp2112_device** %7, align 8
  %50 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  ret void
}

declare dso_local %struct.cp2112_device* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hid_hw_raw_request(%struct.hid_device*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
