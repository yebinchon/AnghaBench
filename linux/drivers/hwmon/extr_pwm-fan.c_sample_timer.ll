; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pwm-fan.c_sample_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pwm-fan.c_sample_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_fan_ctx = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { i32 }

@rpm_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ctx = common dso_local global %struct.pwm_fan_ctx* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sample_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sample_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pwm_fan_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %7 = ptrtoint %struct.pwm_fan_ctx* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @rpm_timer, align 4
  %10 = call %struct.pwm_fan_ctx* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.pwm_fan_ctx* %10, %struct.pwm_fan_ctx** %3, align 8
  %11 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %11, i32 0, i32 4
  %13 = call i32 @atomic_read(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %15, i32 0, i32 4
  %17 = call i32 @atomic_sub(i32 %14, i32* %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (...) @ktime_get()
  %20 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ktime_ms_delta(i32 %19, i32 %22)
  %24 = mul nsw i32 %18, %23
  %25 = mul nsw i32 %24, 60
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 1000
  %31 = call i32 @do_div(i32 %26, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = call i32 (...) @ktime_get()
  %36 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %38, i32 0, i32 2
  %40 = load i64, i64* @jiffies, align 8
  %41 = load i64, i64* @HZ, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @mod_timer(i32* %39, i64 %42)
  ret void
}

declare dso_local %struct.pwm_fan_ctx* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @ktime_ms_delta(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
