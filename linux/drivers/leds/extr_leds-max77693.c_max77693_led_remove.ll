; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_led_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_led_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.max77693_led_device = type { i32, i64, %struct.max77693_sub_led* }
%struct.max77693_sub_led = type { i32, i32 }

@FLED1 = common dso_local global i64 0, align 8
@FLED2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77693_led_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_led_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.max77693_led_device*, align 8
  %4 = alloca %struct.max77693_sub_led*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.max77693_led_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.max77693_led_device* %6, %struct.max77693_led_device** %3, align 8
  %7 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %8 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %7, i32 0, i32 2
  %9 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %8, align 8
  store %struct.max77693_sub_led* %9, %struct.max77693_sub_led** %4, align 8
  %10 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %11 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %16 = load i64, i64* @FLED1, align 8
  %17 = call i64 @max77693_fled_used(%struct.max77693_led_device* %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14, %1
  %20 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %4, align 8
  %21 = load i64, i64* @FLED1, align 8
  %22 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %20, i64 %21
  %23 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @v4l2_flash_release(i32 %24)
  %26 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %4, align 8
  %27 = load i64, i64* @FLED1, align 8
  %28 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %26, i64 %27
  %29 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %28, i32 0, i32 0
  %30 = call i32 @led_classdev_flash_unregister(i32* %29)
  br label %31

31:                                               ; preds = %19, %14
  %32 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %33 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %31
  %37 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %38 = load i64, i64* @FLED2, align 8
  %39 = call i64 @max77693_fled_used(%struct.max77693_led_device* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %4, align 8
  %43 = load i64, i64* @FLED2, align 8
  %44 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %42, i64 %43
  %45 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @v4l2_flash_release(i32 %46)
  %48 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %4, align 8
  %49 = load i64, i64* @FLED2, align 8
  %50 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %48, i64 %49
  %51 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %50, i32 0, i32 0
  %52 = call i32 @led_classdev_flash_unregister(i32* %51)
  br label %53

53:                                               ; preds = %41, %36, %31
  %54 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %55 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %54, i32 0, i32 0
  %56 = call i32 @mutex_destroy(i32* %55)
  ret i32 0
}

declare dso_local %struct.max77693_led_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @max77693_fled_used(%struct.max77693_led_device*, i64) #1

declare dso_local i32 @v4l2_flash_release(i32) #1

declare dso_local i32 @led_classdev_flash_unregister(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
