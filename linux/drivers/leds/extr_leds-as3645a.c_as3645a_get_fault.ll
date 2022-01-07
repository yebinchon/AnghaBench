; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_get_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_get_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev_flash = type { i32 }
%struct.as3645a = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AS_FAULT_INFO_REG = common dso_local global i32 0, align 4
@AS_FAULT_INFO_INDUCTOR_PEAK_LIMIT = common dso_local global i32 0, align 4
@LED_FAULT_OVER_CURRENT = common dso_local global i32 0, align 4
@AS_FAULT_INFO_INDICATOR_LED = common dso_local global i32 0, align 4
@LED_FAULT_INDICATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%u connected LEDs\0A\00", align 1
@AS_FAULT_INFO_LED_AMOUNT = common dso_local global i32 0, align 4
@AS_FAULT_INFO_TIMEOUT = common dso_local global i32 0, align 4
@LED_FAULT_TIMEOUT = common dso_local global i32 0, align 4
@AS_FAULT_INFO_OVER_TEMPERATURE = common dso_local global i32 0, align 4
@LED_FAULT_OVER_TEMPERATURE = common dso_local global i32 0, align 4
@AS_FAULT_INFO_SHORT_CIRCUIT = common dso_local global i32 0, align 4
@AS_FAULT_INFO_OVER_VOLTAGE = common dso_local global i32 0, align 4
@LED_FAULT_INPUT_VOLTAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev_flash*, i32*)* @as3645a_get_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3645a_get_fault(%struct.led_classdev_flash* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.led_classdev_flash*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.as3645a*, align 8
  %7 = alloca i32, align 4
  store %struct.led_classdev_flash* %0, %struct.led_classdev_flash** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %4, align 8
  %9 = call %struct.as3645a* @fled_to_as3645a(%struct.led_classdev_flash* %8)
  store %struct.as3645a* %9, %struct.as3645a** %6, align 8
  %10 = load %struct.as3645a*, %struct.as3645a** %6, align 8
  %11 = load i32, i32* @AS_FAULT_INFO_REG, align 4
  %12 = call i32 @as3645a_read(%struct.as3645a* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %90

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @AS_FAULT_INFO_INDUCTOR_PEAK_LIMIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @LED_FAULT_OVER_CURRENT, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @AS_FAULT_INFO_INDICATOR_LED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @LED_FAULT_INDICATOR, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.as3645a*, %struct.as3645a** %6, align 8
  %39 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @AS_FAULT_INFO_LED_AMOUNT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 2, i32 1
  %48 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @AS_FAULT_INFO_TIMEOUT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %37
  %54 = load i32, i32* @LED_FAULT_TIMEOUT, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %37
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @AS_FAULT_INFO_OVER_TEMPERATURE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* @LED_FAULT_OVER_TEMPERATURE, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @AS_FAULT_INFO_SHORT_CIRCUIT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* @LED_FAULT_OVER_CURRENT, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @AS_FAULT_INFO_OVER_VOLTAGE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* @LED_FAULT_INPUT_VOLTAGE, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %15
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.as3645a* @fled_to_as3645a(%struct.led_classdev_flash*) #1

declare dso_local i32 @as3645a_read(%struct.as3645a*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
