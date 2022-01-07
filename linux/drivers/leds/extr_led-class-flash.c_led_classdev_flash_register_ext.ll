; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_led_classdev_flash_register_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_led_classdev_flash_register_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.led_classdev_flash = type { %struct.led_flash_ops*, %struct.led_classdev }
%struct.led_flash_ops = type { i32 }
%struct.led_classdev = type { i32, i32, i32 }
%struct.led_init_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LED_DEV_CAP_FLASH = common dso_local global i32 0, align 4
@led_flash_resume = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @led_classdev_flash_register_ext(%struct.device* %0, %struct.led_classdev_flash* %1, %struct.led_init_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.led_classdev_flash*, align 8
  %7 = alloca %struct.led_init_data*, align 8
  %8 = alloca %struct.led_classdev*, align 8
  %9 = alloca %struct.led_flash_ops*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.led_classdev_flash* %1, %struct.led_classdev_flash** %6, align 8
  store %struct.led_init_data* %2, %struct.led_init_data** %7, align 8
  %11 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %6, align 8
  %12 = icmp ne %struct.led_classdev_flash* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %63

16:                                               ; preds = %3
  %17 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %6, align 8
  %18 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %17, i32 0, i32 1
  store %struct.led_classdev* %18, %struct.led_classdev** %8, align 8
  %19 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %20 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LED_DEV_CAP_FLASH, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %16
  %26 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %27 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %63

33:                                               ; preds = %25
  %34 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %6, align 8
  %35 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %34, i32 0, i32 0
  %36 = load %struct.led_flash_ops*, %struct.led_flash_ops** %35, align 8
  store %struct.led_flash_ops* %36, %struct.led_flash_ops** %9, align 8
  %37 = load %struct.led_flash_ops*, %struct.led_flash_ops** %9, align 8
  %38 = icmp ne %struct.led_flash_ops* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.led_flash_ops*, %struct.led_flash_ops** %9, align 8
  %41 = getelementptr inbounds %struct.led_flash_ops, %struct.led_flash_ops* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39, %33
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %63

47:                                               ; preds = %39
  %48 = load i32, i32* @led_flash_resume, align 4
  %49 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %50 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %6, align 8
  %52 = call i32 @led_flash_init_sysfs_groups(%struct.led_classdev_flash* %51)
  br label %53

53:                                               ; preds = %47, %16
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %56 = load %struct.led_init_data*, %struct.led_init_data** %7, align 8
  %57 = call i32 @led_classdev_register_ext(%struct.device* %54, %struct.led_classdev* %55, %struct.led_init_data* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %60, %44, %30, %13
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @led_flash_init_sysfs_groups(%struct.led_classdev_flash*) #1

declare dso_local i32 @led_classdev_register_ext(%struct.device*, %struct.led_classdev*, %struct.led_init_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
