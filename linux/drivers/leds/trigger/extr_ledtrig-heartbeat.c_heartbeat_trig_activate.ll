; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-heartbeat.c_heartbeat_trig_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-heartbeat.c_heartbeat_trig_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32, i64, i64 }
%struct.heartbeat_trig_data = type { i32, i64, %struct.led_classdev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LED_BLINK_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @heartbeat_trig_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heartbeat_trig_activate(%struct.led_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca %struct.heartbeat_trig_data*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.heartbeat_trig_data* @kzalloc(i32 24, i32 %5)
  store %struct.heartbeat_trig_data* %6, %struct.heartbeat_trig_data** %4, align 8
  %7 = load %struct.heartbeat_trig_data*, %struct.heartbeat_trig_data** %4, align 8
  %8 = icmp ne %struct.heartbeat_trig_data* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %14 = load %struct.heartbeat_trig_data*, %struct.heartbeat_trig_data** %4, align 8
  %15 = call i32 @led_set_trigger_data(%struct.led_classdev* %13, %struct.heartbeat_trig_data* %14)
  %16 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %17 = load %struct.heartbeat_trig_data*, %struct.heartbeat_trig_data** %4, align 8
  %18 = getelementptr inbounds %struct.heartbeat_trig_data, %struct.heartbeat_trig_data* %17, i32 0, i32 2
  store %struct.led_classdev* %16, %struct.led_classdev** %18, align 8
  %19 = load %struct.heartbeat_trig_data*, %struct.heartbeat_trig_data** %4, align 8
  %20 = getelementptr inbounds %struct.heartbeat_trig_data, %struct.heartbeat_trig_data* %19, i32 0, i32 0
  %21 = call i32 @timer_setup(i32* %20, i32 (i32*)* @led_heartbeat_function, i32 0)
  %22 = load %struct.heartbeat_trig_data*, %struct.heartbeat_trig_data** %4, align 8
  %23 = getelementptr inbounds %struct.heartbeat_trig_data, %struct.heartbeat_trig_data* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %25 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %12
  %29 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %30 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %33 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %12
  %35 = load %struct.heartbeat_trig_data*, %struct.heartbeat_trig_data** %4, align 8
  %36 = getelementptr inbounds %struct.heartbeat_trig_data, %struct.heartbeat_trig_data* %35, i32 0, i32 0
  %37 = call i32 @led_heartbeat_function(i32* %36)
  %38 = load i32, i32* @LED_BLINK_SW, align 4
  %39 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %40 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %39, i32 0, i32 0
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %34, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.heartbeat_trig_data* @kzalloc(i32, i32) #1

declare dso_local i32 @led_set_trigger_data(%struct.led_classdev*, %struct.heartbeat_trig_data*) #1

declare dso_local i32 @timer_setup(i32*, i32 (i32*)*, i32) #1

declare dso_local i32 @led_heartbeat_function(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
