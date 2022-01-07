; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tlc591xx.c_tlc591xx_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tlc591xx.c_tlc591xx_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tlc591xx_priv = type { %struct.tlc591xx_led*, i32 }
%struct.tlc591xx_led = type { i32, %struct.TYPE_2__, %struct.tlc591xx_priv*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tlc591xx = type { i32 }

@MODE2_DIM = common dso_local global i32 0, align 4
@TLC591XX_MAX_LEDS = common dso_local global i32 0, align 4
@tlc591xx_brightness_set = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"couldn't register LED %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tlc591xx_priv*, %struct.tlc591xx*)* @tlc591xx_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlc591xx_configure(%struct.device* %0, %struct.tlc591xx_priv* %1, %struct.tlc591xx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.tlc591xx_priv*, align 8
  %7 = alloca %struct.tlc591xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tlc591xx_led*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.tlc591xx_priv* %1, %struct.tlc591xx_priv** %6, align 8
  store %struct.tlc591xx* %2, %struct.tlc591xx** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.tlc591xx_priv*, %struct.tlc591xx_priv** %6, align 8
  %12 = getelementptr inbounds %struct.tlc591xx_priv, %struct.tlc591xx_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MODE2_DIM, align 4
  %15 = call i32 @tlc591xx_set_mode(i32 %13, i32 %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %61, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @TLC591XX_MAX_LEDS, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %16
  %21 = load %struct.tlc591xx_priv*, %struct.tlc591xx_priv** %6, align 8
  %22 = getelementptr inbounds %struct.tlc591xx_priv, %struct.tlc591xx_priv* %21, i32 0, i32 0
  %23 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.tlc591xx_led, %struct.tlc591xx_led* %23, i64 %25
  store %struct.tlc591xx_led* %26, %struct.tlc591xx_led** %10, align 8
  %27 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %10, align 8
  %28 = getelementptr inbounds %struct.tlc591xx_led, %struct.tlc591xx_led* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %61

32:                                               ; preds = %20
  %33 = load %struct.tlc591xx_priv*, %struct.tlc591xx_priv** %6, align 8
  %34 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %10, align 8
  %35 = getelementptr inbounds %struct.tlc591xx_led, %struct.tlc591xx_led* %34, i32 0, i32 2
  store %struct.tlc591xx_priv* %33, %struct.tlc591xx_priv** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %10, align 8
  %38 = getelementptr inbounds %struct.tlc591xx_led, %struct.tlc591xx_led* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @tlc591xx_brightness_set, align 4
  %40 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %10, align 8
  %41 = getelementptr inbounds %struct.tlc591xx_led, %struct.tlc591xx_led* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @LED_FULL, align 4
  %44 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %10, align 8
  %45 = getelementptr inbounds %struct.tlc591xx_led, %struct.tlc591xx_led* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %10, align 8
  %49 = getelementptr inbounds %struct.tlc591xx_led, %struct.tlc591xx_led* %48, i32 0, i32 1
  %50 = call i32 @led_classdev_register(%struct.device* %47, %struct.TYPE_2__* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %32
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %10, align 8
  %56 = getelementptr inbounds %struct.tlc591xx_led, %struct.tlc591xx_led* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %65

60:                                               ; preds = %32
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %16

64:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %70

65:                                               ; preds = %53
  %66 = load %struct.tlc591xx_priv*, %struct.tlc591xx_priv** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @tlc591xx_destroy_devices(%struct.tlc591xx_priv* %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %64
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @tlc591xx_set_mode(i32, i32) #1

declare dso_local i32 @led_classdev_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @tlc591xx_destroy_devices(%struct.tlc591xx_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
