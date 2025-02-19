; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_colibri-vf50-ts.c_vf50_ts_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_colibri-vf50-ts.c_vf50_ts_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.vf50_touch_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Input device %s closed, disable touch detection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @vf50_ts_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf50_ts_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.vf50_touch_device*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.vf50_touch_device* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.vf50_touch_device* %6, %struct.vf50_touch_device** %3, align 8
  %7 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %3, align 8
  %8 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %3, align 8
  %12 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = call i32 (...) @mb()
  %14 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %3, align 8
  %15 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @synchronize_irq(i32 %16)
  %18 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %3, align 8
  %19 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gpiod_set_value(i32 %20, i32 0)
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @pinctrl_pm_select_default_state(%struct.device* %22)
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(%struct.device* %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %27)
  ret void
}

declare dso_local %struct.vf50_touch_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @pinctrl_pm_select_default_state(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
