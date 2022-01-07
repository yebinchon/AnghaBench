; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8323.c_lm8323_pwm_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8323.c_lm8323_pwm_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.lm8323_pwm = type { i32, i32, i32, %struct.lm8323_chip* }
%struct.lm8323_chip = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @lm8323_pwm_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm8323_pwm_set_brightness(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lm8323_pwm*, align 8
  %6 = alloca %struct.lm8323_chip*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %8 = call %struct.lm8323_pwm* @cdev_to_pwm(%struct.led_classdev* %7)
  store %struct.lm8323_pwm* %8, %struct.lm8323_pwm** %5, align 8
  %9 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %5, align 8
  %10 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %9, i32 0, i32 3
  %11 = load %struct.lm8323_chip*, %struct.lm8323_chip** %10, align 8
  store %struct.lm8323_chip* %11, %struct.lm8323_chip** %6, align 8
  %12 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %5, align 8
  %13 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %5, align 8
  %17 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %5, align 8
  %19 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %18, i32 0, i32 2
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = call i64 (...) @in_interrupt()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %5, align 8
  %25 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %24, i32 0, i32 1
  %26 = call i32 @schedule_work(i32* %25)
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.lm8323_chip*, %struct.lm8323_chip** %6, align 8
  %29 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.lm8323_chip*, %struct.lm8323_chip** %6, align 8
  %32 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %5, align 8
  %41 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %40, i32 0, i32 1
  %42 = call i32 @schedule_work(i32* %41)
  br label %47

43:                                               ; preds = %27
  %44 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %5, align 8
  %45 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %44, i32 0, i32 1
  %46 = call i32 @lm8323_pwm_work(i32* %45)
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.lm8323_chip*, %struct.lm8323_chip** %6, align 8
  %49 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %51

51:                                               ; preds = %47, %23
  ret void
}

declare dso_local %struct.lm8323_pwm* @cdev_to_pwm(%struct.led_classdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @lm8323_pwm_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
