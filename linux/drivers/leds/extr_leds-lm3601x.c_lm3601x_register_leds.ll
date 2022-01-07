; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3601x.c_lm3601x_register_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3601x.c_lm3601x_register_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3601x_led = type { i64, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.led_classdev, %struct.led_flash_setting, %struct.led_flash_setting, i32* }
%struct.led_classdev = type { i32, i32, i32 }
%struct.led_flash_setting = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fwnode_handle = type { i32 }
%struct.led_init_data = type { i8*, i32, %struct.fwnode_handle* }

@flash_ops = common dso_local global i32 0, align 4
@LM3601X_MIN_TIMEOUT_US = common dso_local global i32 0, align 4
@LM3601X_LOWER_STEP_US = common dso_local global i32 0, align 4
@LM3601X_MIN_STROBE_I_UA = common dso_local global i32 0, align 4
@LM3601X_TORCH_REG_DIV = common dso_local global i32 0, align 4
@lm3601x_brightness_set = common dso_local global i32 0, align 4
@LED_DEV_CAP_FLASH = common dso_local global i32 0, align 4
@LM3601X_LED_TORCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"torch\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"infrared\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3601x_led*, %struct.fwnode_handle*)* @lm3601x_register_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3601x_register_leds(%struct.lm3601x_led* %0, %struct.fwnode_handle* %1) #0 {
  %3 = alloca %struct.lm3601x_led*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca %struct.led_flash_setting*, align 8
  %7 = alloca %struct.led_init_data, align 8
  store %struct.lm3601x_led* %0, %struct.lm3601x_led** %3, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %4, align 8
  %8 = bitcast %struct.led_init_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %10 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i32* @flash_ops, i32** %11, align 8
  %12 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %13 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store %struct.led_flash_setting* %14, %struct.led_flash_setting** %6, align 8
  %15 = load i32, i32* @LM3601X_MIN_TIMEOUT_US, align 4
  %16 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %17 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %19 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %22 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @LM3601X_LOWER_STEP_US, align 4
  %24 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %25 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %27 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %30 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %32 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store %struct.led_flash_setting* %33, %struct.led_flash_setting** %6, align 8
  %34 = load i32, i32* @LM3601X_MIN_STROBE_I_UA, align 4
  %35 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %36 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %38 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %41 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @LM3601X_TORCH_REG_DIV, align 4
  %43 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %44 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %46 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %49 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %51 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store %struct.led_classdev* %52, %struct.led_classdev** %5, align 8
  %53 = load i32, i32* @lm3601x_brightness_set, align 4
  %54 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %55 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %57 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @LM3601X_TORCH_REG_DIV, align 4
  %60 = call i32 @DIV_ROUND_UP(i32 %58, i32 %59)
  %61 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %62 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @LED_DEV_CAP_FLASH, align 4
  %64 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %65 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %69 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %7, i32 0, i32 2
  store %struct.fwnode_handle* %68, %struct.fwnode_handle** %69, align 8
  %70 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %71 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %7, i32 0, i32 1
  store i32 %74, i32* %75, align 8
  %76 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %77 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @LM3601X_LED_TORCH, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)
  %83 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %7, i32 0, i32 0
  store i8* %82, i8** %83, align 8
  %84 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %85 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %89 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %88, i32 0, i32 1
  %90 = call i32 @led_classdev_flash_register_ext(i32* %87, %struct.TYPE_4__* %89, %struct.led_init_data* %7)
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #2

declare dso_local i32 @led_classdev_flash_register_ext(i32*, %struct.TYPE_4__*, %struct.led_init_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
