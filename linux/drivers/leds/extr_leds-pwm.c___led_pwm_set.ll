; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pwm.c___led_pwm_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pwm.c___led_pwm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_pwm_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_pwm_data*)* @__led_pwm_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__led_pwm_set(%struct.led_pwm_data* %0) #0 {
  %2 = alloca %struct.led_pwm_data*, align 8
  %3 = alloca i32, align 4
  store %struct.led_pwm_data* %0, %struct.led_pwm_data** %2, align 8
  %4 = load %struct.led_pwm_data*, %struct.led_pwm_data** %2, align 8
  %5 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.led_pwm_data*, %struct.led_pwm_data** %2, align 8
  %8 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.led_pwm_data*, %struct.led_pwm_data** %2, align 8
  %12 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pwm_config(i32 %9, i32 %10, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.led_pwm_data*, %struct.led_pwm_data** %2, align 8
  %19 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pwm_disable(i32 %20)
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.led_pwm_data*, %struct.led_pwm_data** %2, align 8
  %24 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pwm_enable(i32 %25)
  br label %27

27:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @pwm_config(i32, i32, i32) #1

declare dso_local i32 @pwm_disable(i32) #1

declare dso_local i32 @pwm_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
