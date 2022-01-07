; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_led_flash_strobe_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_led_flash_strobe_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev_flash = type { %struct.TYPE_2__, %struct.led_flash_setting }
%struct.TYPE_2__ = type { i32 }
%struct.led_flash_setting = type { i32, i32 }
%struct.ktd2692_context = type { i32, i32, i32 }

@KTD2692_REG_FLASH_TIMEOUT_BASE = common dso_local global i32 0, align 4
@KTD2692_MODE_FLASH = common dso_local global i32 0, align 4
@KTD2692_HIGH = common dso_local global i32 0, align 4
@KTD2692_MODE_DISABLE = common dso_local global i8* null, align 8
@KTD2692_LOW = common dso_local global i32 0, align 4
@KTD2692_REG_MODE_BASE = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev_flash*, i32)* @ktd2692_led_flash_strobe_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ktd2692_led_flash_strobe_set(%struct.led_classdev_flash* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev_flash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ktd2692_context*, align 8
  %6 = alloca %struct.led_flash_setting*, align 8
  %7 = alloca i32, align 4
  store %struct.led_classdev_flash* %0, %struct.led_classdev_flash** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %9 = call %struct.ktd2692_context* @fled_cdev_to_led(%struct.led_classdev_flash* %8)
  store %struct.ktd2692_context* %9, %struct.ktd2692_context** %5, align 8
  %10 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %11 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %10, i32 0, i32 1
  store %struct.led_flash_setting* %11, %struct.led_flash_setting** %6, align 8
  %12 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %13 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %19 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %22 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @GET_TIMEOUT_OFFSET(i32 %20, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @KTD2692_REG_FLASH_TIMEOUT_BASE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @ktd2692_expresswire_write(%struct.ktd2692_context* %25, i32 %28)
  %30 = load i32, i32* @KTD2692_MODE_FLASH, align 4
  %31 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %32 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %34 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @KTD2692_HIGH, align 4
  %37 = call i32 @gpiod_direction_output(i32 %35, i32 %36)
  br label %48

38:                                               ; preds = %2
  %39 = load i8*, i8** @KTD2692_MODE_DISABLE, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %42 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %44 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @KTD2692_LOW, align 4
  %47 = call i32 @gpiod_direction_output(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %17
  %49 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %50 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %51 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @KTD2692_REG_MODE_BASE, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @ktd2692_expresswire_write(%struct.ktd2692_context* %49, i32 %54)
  %56 = load i32, i32* @LED_OFF, align 4
  %57 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %58 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load i8*, i8** @KTD2692_MODE_DISABLE, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %63 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %65 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  ret i32 0
}

declare dso_local %struct.ktd2692_context* @fled_cdev_to_led(%struct.led_classdev_flash*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @GET_TIMEOUT_OFFSET(i32, i32) #1

declare dso_local i32 @ktd2692_expresswire_write(%struct.ktd2692_context*, i32) #1

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
