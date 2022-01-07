; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_gpio_direction_input.c"
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
@EIO = common dso_local global i32 0, align 4
@gpio_push_pull = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"error setting GPIO config: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @cp2112_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp2112_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cp2112_device*, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.cp2112_device* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.cp2112_device* %10, %struct.cp2112_device** %5, align 8
  %11 = load %struct.cp2112_device*, %struct.cp2112_device** %5, align 8
  %12 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %11, i32 0, i32 2
  %13 = load %struct.hid_device*, %struct.hid_device** %12, align 8
  store %struct.hid_device* %13, %struct.hid_device** %6, align 8
  %14 = load %struct.cp2112_device*, %struct.cp2112_device** %5, align 8
  %15 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.cp2112_device*, %struct.cp2112_device** %5, align 8
  %18 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %21 = load i32, i32* @CP2112_GPIO_CONFIG, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @CP2112_GPIO_CONFIG_LENGTH, align 4
  %24 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %25 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %26 = call i32 @hid_hw_raw_request(%struct.hid_device* %20, i32 %21, i32* %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @CP2112_GPIO_CONFIG_LENGTH, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @hid_err(%struct.hid_device* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %30
  br label %72

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  %42 = shl i32 1, %41
  %43 = xor i32 %42, -1
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @gpio_push_pull, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %52 = load i32, i32* @CP2112_GPIO_CONFIG, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @CP2112_GPIO_CONFIG_LENGTH, align 4
  %55 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %56 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %57 = call i32 @hid_hw_raw_request(%struct.hid_device* %51, i32 %52, i32* %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @CP2112_GPIO_CONFIG_LENGTH, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %40
  %62 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @hid_err(%struct.hid_device* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %67, %61
  br label %72

71:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %71, %70, %39
  %73 = load %struct.cp2112_device*, %struct.cp2112_device** %5, align 8
  %74 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %8, align 4
  ret i32 %76
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
