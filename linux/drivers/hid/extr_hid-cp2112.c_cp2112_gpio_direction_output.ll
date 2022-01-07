; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.cp2112_device = type { i32*, i32, %struct.hid_device* }
%struct.hid_device = type { i32 }

@CP2112_GPIO_CONFIG = common dso_local global i32 0, align 4
@CP2112_GPIO_CONFIG_LENGTH = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error requesting GPIO config: %d\0A\00", align 1
@gpio_push_pull = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"error setting GPIO config: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @cp2112_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp2112_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cp2112_device*, align 8
  %9 = alloca %struct.hid_device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = call %struct.cp2112_device* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.cp2112_device* %13, %struct.cp2112_device** %8, align 8
  %14 = load %struct.cp2112_device*, %struct.cp2112_device** %8, align 8
  %15 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %14, i32 0, i32 2
  %16 = load %struct.hid_device*, %struct.hid_device** %15, align 8
  store %struct.hid_device* %16, %struct.hid_device** %9, align 8
  %17 = load %struct.cp2112_device*, %struct.cp2112_device** %8, align 8
  %18 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.cp2112_device*, %struct.cp2112_device** %8, align 8
  %21 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %24 = load i32, i32* @CP2112_GPIO_CONFIG, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @CP2112_GPIO_CONFIG_LENGTH, align 4
  %27 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %28 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %29 = call i32 @hid_hw_raw_request(%struct.hid_device* %23, i32 %24, i32* %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @CP2112_GPIO_CONFIG_LENGTH, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @hid_err(%struct.hid_device* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %68

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 1, %38
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @gpio_push_pull, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %48 = load i32, i32* @CP2112_GPIO_CONFIG, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* @CP2112_GPIO_CONFIG_LENGTH, align 4
  %51 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %52 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %53 = call i32 @hid_hw_raw_request(%struct.hid_device* %47, i32 %48, i32* %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %37
  %57 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @hid_err(%struct.hid_device* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %68

60:                                               ; preds = %37
  %61 = load %struct.cp2112_device*, %struct.cp2112_device** %8, align 8
  %62 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @cp2112_gpio_set(%struct.gpio_chip* %64, i32 %65, i32 %66)
  store i32 0, i32* %4, align 4
  br label %81

68:                                               ; preds = %56, %33
  %69 = load %struct.cp2112_device*, %struct.cp2112_device** %8, align 8
  %70 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %11, align 4
  br label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  br label %79

79:                                               ; preds = %76, %74
  %80 = phi i32 [ %75, %74 ], [ %78, %76 ]
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %60
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.cp2112_device* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hid_hw_raw_request(%struct.hid_device*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cp2112_gpio_set(%struct.gpio_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
