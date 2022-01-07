; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pwm-vibra.c_pwm_vibrator_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pwm-vibra.c_pwm_vibrator_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_vibrator = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.pwm_state = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to enable regulator: %d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to apply pwm state: %d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to apply dir-pwm state: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_vibrator*)* @pwm_vibrator_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_vibrator_start(%struct.pwm_vibrator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwm_vibrator*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pwm_state, align 4
  %6 = alloca i32, align 4
  store %struct.pwm_vibrator* %0, %struct.pwm_vibrator** %3, align 8
  %7 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %3, align 8
  %8 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %7, i32 0, i32 6
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %3, align 8
  %14 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %1
  %18 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %3, align 8
  %19 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @regulator_enable(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %85

29:                                               ; preds = %17
  %30 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %3, align 8
  %31 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %3, align 8
  %34 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @pwm_get_state(i64 %35, %struct.pwm_state* %5)
  %37 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %3, align 8
  %38 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pwm_set_relative_duty_cycle(%struct.pwm_state* %5, i32 %39, i32 65535)
  %41 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %5, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %3, align 8
  %43 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @pwm_apply_state(i64 %44, %struct.pwm_state* %5)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %32
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %85

53:                                               ; preds = %32
  %54 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %3, align 8
  %55 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %53
  %59 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %3, align 8
  %60 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @pwm_get_state(i64 %61, %struct.pwm_state* %5)
  %63 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %3, align 8
  %64 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %5, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %5, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %3, align 8
  %69 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @pwm_apply_state(i64 %70, %struct.pwm_state* %5)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %58
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %3, align 8
  %79 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @pwm_disable(i64 %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %85

83:                                               ; preds = %58
  br label %84

84:                                               ; preds = %83, %53
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %74, %48, %24
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @pwm_get_state(i64, %struct.pwm_state*) #1

declare dso_local i32 @pwm_set_relative_duty_cycle(%struct.pwm_state*, i32, i32) #1

declare dso_local i32 @pwm_apply_state(i64, %struct.pwm_state*) #1

declare dso_local i32 @pwm_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
