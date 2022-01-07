; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3601x.c_lm3601x_read_faults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3601x.c_lm3601x_read_faults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3601x_led = type { i32, i32 }

@LM3601X_FLAGS_REG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@LM36010_OVP_FAULT = common dso_local global i32 0, align 4
@LED_FAULT_OVER_VOLTAGE = common dso_local global i32 0, align 4
@LM3601X_THERM_SHUTDOWN = common dso_local global i32 0, align 4
@LM3601X_THERM_CURR = common dso_local global i32 0, align 4
@LED_FAULT_OVER_TEMPERATURE = common dso_local global i32 0, align 4
@LM3601X_SHORT_FAULT = common dso_local global i32 0, align 4
@LED_FAULT_SHORT_CIRCUIT = common dso_local global i32 0, align 4
@LM36010_CURR_LIMIT = common dso_local global i32 0, align 4
@LED_FAULT_OVER_CURRENT = common dso_local global i32 0, align 4
@LM3601X_UVLO_FAULT = common dso_local global i32 0, align 4
@LED_FAULT_UNDER_VOLTAGE = common dso_local global i32 0, align 4
@LM3601X_IVFM_TRIP = common dso_local global i32 0, align 4
@LED_FAULT_INPUT_VOLTAGE = common dso_local global i32 0, align 4
@LED_FAULT_LED_OVER_TEMPERATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3601x_led*)* @lm3601x_read_faults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3601x_read_faults(%struct.lm3601x_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3601x_led*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lm3601x_led* %0, %struct.lm3601x_led** %3, align 8
  %6 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %7 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LM3601X_FLAGS_REG, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %101

16:                                               ; preds = %1
  %17 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %18 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @LM36010_OVP_FAULT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i32, i32* @LED_FAULT_OVER_VOLTAGE, align 4
  %25 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %26 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %16
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @LM3601X_THERM_SHUTDOWN, align 4
  %32 = load i32, i32* @LM3601X_THERM_CURR, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @LED_FAULT_OVER_TEMPERATURE, align 4
  %38 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %39 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %29
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @LM3601X_SHORT_FAULT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @LED_FAULT_SHORT_CIRCUIT, align 4
  %49 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %50 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @LM36010_CURR_LIMIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @LED_FAULT_OVER_CURRENT, align 4
  %60 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %61 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @LM3601X_UVLO_FAULT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* @LED_FAULT_UNDER_VOLTAGE, align 4
  %71 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %72 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %64
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @LM3601X_IVFM_TRIP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32, i32* @LED_FAULT_INPUT_VOLTAGE, align 4
  %82 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %83 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %75
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @LM3601X_THERM_SHUTDOWN, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32, i32* @LED_FAULT_LED_OVER_TEMPERATURE, align 4
  %93 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %94 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %86
  %98 = load %struct.lm3601x_led*, %struct.lm3601x_led** %3, align 8
  %99 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %13
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
