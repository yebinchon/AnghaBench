; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_led_flash_strobe_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_led_flash_strobe_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev_flash = type { i32 }
%struct.max77693_sub_led = type { i32, i64 }
%struct.max77693_led_device = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev_flash*, i32)* @max77693_led_flash_strobe_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_led_flash_strobe_set(%struct.led_classdev_flash* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev_flash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max77693_sub_led*, align 8
  %6 = alloca %struct.max77693_led_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.led_classdev_flash* %0, %struct.led_classdev_flash** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %10 = call %struct.max77693_sub_led* @flcdev_to_sub_led(%struct.led_classdev_flash* %9)
  store %struct.max77693_sub_led* %10, %struct.max77693_sub_led** %5, align 8
  %11 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %5, align 8
  %12 = call %struct.max77693_led_device* @sub_led_to_led(%struct.max77693_sub_led* %11)
  store %struct.max77693_led_device* %12, %struct.max77693_led_device** %6, align 8
  %13 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %5, align 8
  %14 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %17 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @MODE_FLASH(i32 %23)
  %25 = call i32 @max77693_clear_mode(%struct.max77693_led_device* %22, i32 %24)
  store i32 %25, i32* %8, align 4
  br label %58

26:                                               ; preds = %2
  %27 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %5, align 8
  %28 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %31 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %36 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %5, align 8
  %37 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @max77693_set_timeout(%struct.max77693_led_device* %35, i64 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %58

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %47 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @MODE_FLASH(i32 %49)
  %51 = call i32 @max77693_add_mode(%struct.max77693_led_device* %48, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %58

55:                                               ; preds = %44
  %56 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %5, align 8
  %57 = call i32 @max77693_get_flash_faults(%struct.max77693_sub_led* %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %54, %42, %21
  %59 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %60 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %59, i32 0, i32 2
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.max77693_sub_led* @flcdev_to_sub_led(%struct.led_classdev_flash*) #1

declare dso_local %struct.max77693_led_device* @sub_led_to_led(%struct.max77693_sub_led*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max77693_clear_mode(%struct.max77693_led_device*, i32) #1

declare dso_local i32 @MODE_FLASH(i32) #1

declare dso_local i32 @max77693_set_timeout(%struct.max77693_led_device*, i64) #1

declare dso_local i32 @max77693_add_mode(%struct.max77693_led_device*, i32) #1

declare dso_local i32 @max77693_get_flash_faults(%struct.max77693_sub_led*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
