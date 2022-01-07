; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_led_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_led_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.led_classdev_flash = type { i32 }
%struct.max77693_sub_led = type { i32 }
%struct.max77693_led_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to clear torch mode (%d)\0A\00", align 1
@TORCH_IOUT_STEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to set torch current (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to set torch mode (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @max77693_led_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_led_brightness_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_classdev_flash*, align 8
  %6 = alloca %struct.max77693_sub_led*, align 8
  %7 = alloca %struct.max77693_led_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %11 = call %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev* %10)
  store %struct.led_classdev_flash* %11, %struct.led_classdev_flash** %5, align 8
  %12 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %13 = call %struct.max77693_sub_led* @flcdev_to_sub_led(%struct.led_classdev_flash* %12)
  store %struct.max77693_sub_led* %13, %struct.max77693_sub_led** %6, align 8
  %14 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %6, align 8
  %15 = call %struct.max77693_led_device* @sub_led_to_led(%struct.max77693_sub_led* %14)
  store %struct.max77693_led_device* %15, %struct.max77693_led_device** %7, align 8
  %16 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %6, align 8
  %17 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.max77693_led_device*, %struct.max77693_led_device** %7, align 8
  %20 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load %struct.max77693_led_device*, %struct.max77693_led_device** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @MODE_TORCH(i32 %26)
  %28 = call i32 @max77693_clear_mode(%struct.max77693_led_device* %25, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.max77693_led_device*, %struct.max77693_led_device** %7, align 8
  %33 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31, %24
  br label %70

39:                                               ; preds = %2
  %40 = load %struct.max77693_led_device*, %struct.max77693_led_device** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @TORCH_IOUT_STEP, align 4
  %44 = mul i32 %42, %43
  %45 = call i32 @max77693_set_torch_current(%struct.max77693_led_device* %40, i32 %41, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load %struct.max77693_led_device*, %struct.max77693_led_device** %7, align 8
  %50 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %70

55:                                               ; preds = %39
  %56 = load %struct.max77693_led_device*, %struct.max77693_led_device** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @MODE_TORCH(i32 %57)
  %59 = call i32 @max77693_add_mode(%struct.max77693_led_device* %56, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.max77693_led_device*, %struct.max77693_led_device** %7, align 8
  %64 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %69, %48, %38
  %71 = load %struct.max77693_led_device*, %struct.max77693_led_device** %7, align 8
  %72 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev*) #1

declare dso_local %struct.max77693_sub_led* @flcdev_to_sub_led(%struct.led_classdev_flash*) #1

declare dso_local %struct.max77693_led_device* @sub_led_to_led(%struct.max77693_sub_led*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max77693_clear_mode(%struct.max77693_led_device*, i32) #1

declare dso_local i32 @MODE_TORCH(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @max77693_set_torch_current(%struct.max77693_led_device*, i32, i32) #1

declare dso_local i32 @max77693_add_mode(%struct.max77693_led_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
