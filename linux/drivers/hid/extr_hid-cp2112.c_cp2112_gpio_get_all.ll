; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_gpio_get_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_gpio_get_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.cp2112_device = type { i32*, i32, %struct.hid_device* }
%struct.hid_device = type { i32 }

@CP2112_GPIO_GET = common dso_local global i32 0, align 4
@CP2112_GPIO_GET_LENGTH = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error requesting GPIO values: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*)* @cp2112_gpio_get_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp2112_gpio_get_all(%struct.gpio_chip* %0) #0 {
  %2 = alloca %struct.gpio_chip*, align 8
  %3 = alloca %struct.cp2112_device*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %2, align 8
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %8 = call %struct.cp2112_device* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.cp2112_device* %8, %struct.cp2112_device** %3, align 8
  %9 = load %struct.cp2112_device*, %struct.cp2112_device** %3, align 8
  %10 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %9, i32 0, i32 2
  %11 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  store %struct.hid_device* %11, %struct.hid_device** %4, align 8
  %12 = load %struct.cp2112_device*, %struct.cp2112_device** %3, align 8
  %13 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.cp2112_device*, %struct.cp2112_device** %3, align 8
  %16 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %19 = load i32, i32* @CP2112_GPIO_GET, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @CP2112_GPIO_GET_LENGTH, align 4
  %22 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %23 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %24 = call i32 @hid_hw_raw_request(%struct.hid_device* %18, i32 %19, i32* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @CP2112_GPIO_GET_LENGTH, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %1
  %29 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @hid_err(%struct.hid_device* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %35, %34 ], [ %38, %36 ]
  store i32 %40, i32* %6, align 4
  br label %45

41:                                               ; preds = %1
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = load %struct.cp2112_device*, %struct.cp2112_device** %3, align 8
  %47 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
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
