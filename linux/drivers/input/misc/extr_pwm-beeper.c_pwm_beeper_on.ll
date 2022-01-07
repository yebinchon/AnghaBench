; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pwm-beeper.c_pwm_beeper_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pwm-beeper.c_pwm_beeper_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_beeper = type { i32, i32, i32 }
%struct.pwm_state = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_beeper*, i64)* @pwm_beeper_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_beeper_on(%struct.pwm_beeper* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_beeper*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pwm_state, align 8
  %7 = alloca i32, align 4
  store %struct.pwm_beeper* %0, %struct.pwm_beeper** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.pwm_beeper*, %struct.pwm_beeper** %4, align 8
  %9 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pwm_get_state(i32 %10, %struct.pwm_state* %6)
  %12 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = call i32 @pwm_set_relative_duty_cycle(%struct.pwm_state* %6, i32 50, i32 100)
  %16 = load %struct.pwm_beeper*, %struct.pwm_beeper** %4, align 8
  %17 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pwm_apply_state(i32 %18, %struct.pwm_state* %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %46

24:                                               ; preds = %2
  %25 = load %struct.pwm_beeper*, %struct.pwm_beeper** %4, align 8
  %26 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %24
  %30 = load %struct.pwm_beeper*, %struct.pwm_beeper** %4, align 8
  %31 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regulator_enable(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.pwm_beeper*, %struct.pwm_beeper** %4, align 8
  %38 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pwm_disable(i32 %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %29
  %43 = load %struct.pwm_beeper*, %struct.pwm_beeper** %4, align 8
  %44 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %24
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %36, %22
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @pwm_get_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @pwm_set_relative_duty_cycle(%struct.pwm_state*, i32, i32) #1

declare dso_local i32 @pwm_apply_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @pwm_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
