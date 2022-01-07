; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-transient.c_transient_timer_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-transient.c_transient_timer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transient_trig_data = type { i32, i64, %struct.led_classdev* }
%struct.led_classdev = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@transient_data = common dso_local global %struct.transient_trig_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @transient_timer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transient_timer_function(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.transient_trig_data*, align 8
  %4 = alloca %struct.led_classdev*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.transient_trig_data*, %struct.transient_trig_data** %3, align 8
  %6 = ptrtoint %struct.transient_trig_data* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.transient_trig_data* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.transient_trig_data* %9, %struct.transient_trig_data** %3, align 8
  %10 = load %struct.transient_trig_data*, %struct.transient_trig_data** %3, align 8
  %11 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %10, i32 0, i32 2
  %12 = load %struct.led_classdev*, %struct.led_classdev** %11, align 8
  store %struct.led_classdev* %12, %struct.led_classdev** %4, align 8
  %13 = load %struct.transient_trig_data*, %struct.transient_trig_data** %3, align 8
  %14 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %16 = load %struct.transient_trig_data*, %struct.transient_trig_data** %3, align 8
  %17 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @led_set_brightness_nosleep(%struct.led_classdev* %15, i32 %18)
  ret void
}

declare dso_local %struct.transient_trig_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @led_set_brightness_nosleep(%struct.led_classdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
