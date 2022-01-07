; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-oneshot.c_oneshot_trig_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-oneshot.c_oneshot_trig_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.oneshot_trig_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LED_INIT_DEFAULT_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @oneshot_trig_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oneshot_trig_activate(%struct.led_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca %struct.oneshot_trig_data*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.oneshot_trig_data* @kzalloc(i32 4, i32 %5)
  store %struct.oneshot_trig_data* %6, %struct.oneshot_trig_data** %4, align 8
  %7 = load %struct.oneshot_trig_data*, %struct.oneshot_trig_data** %4, align 8
  %8 = icmp ne %struct.oneshot_trig_data* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %14 = load %struct.oneshot_trig_data*, %struct.oneshot_trig_data** %4, align 8
  %15 = call i32 @led_set_trigger_data(%struct.led_classdev* %13, %struct.oneshot_trig_data* %14)
  %16 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %17 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LED_INIT_DEFAULT_TRIGGER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %12
  %23 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %24 = call i32 @pattern_init(%struct.led_classdev* %23)
  %25 = load i32, i32* @LED_INIT_DEFAULT_TRIGGER, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %28 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %22, %12
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.oneshot_trig_data* @kzalloc(i32, i32) #1

declare dso_local i32 @led_set_trigger_data(%struct.led_classdev*, %struct.oneshot_trig_data*) #1

declare dso_local i32 @pattern_init(%struct.led_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
