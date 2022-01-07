; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_colibri-vf50-ts.c_vf50_ts_enable_touch_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_colibri-vf50-ts.c_vf50_ts_enable_touch_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf50_touch_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@COLI_PULLUP_MIN_DELAY_US = common dso_local global i32 0, align 4
@COLI_PULLUP_MAX_DELAY_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vf50_touch_device*)* @vf50_ts_enable_touch_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf50_ts_enable_touch_detection(%struct.vf50_touch_device* %0) #0 {
  %2 = alloca %struct.vf50_touch_device*, align 8
  store %struct.vf50_touch_device* %0, %struct.vf50_touch_device** %2, align 8
  %3 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %2, align 8
  %4 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @gpiod_set_value(i32 %5, i32 1)
  %7 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %2, align 8
  %8 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @pinctrl_pm_select_idle_state(i32* %10)
  %12 = load i32, i32* @COLI_PULLUP_MIN_DELAY_US, align 4
  %13 = load i32, i32* @COLI_PULLUP_MAX_DELAY_US, align 4
  %14 = call i32 @usleep_range(i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @pinctrl_pm_select_idle_state(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
