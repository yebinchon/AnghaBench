; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pwm-vibra.c_pwm_vibrator_play_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pwm-vibra.c_pwm_vibrator_play_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.pwm_vibrator = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* @pwm_vibrator_play_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_vibrator_play_effect(%struct.input_dev* %0, i8* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.pwm_vibrator*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %6, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %9 = call %struct.pwm_vibrator* @input_get_drvdata(%struct.input_dev* %8)
  store %struct.pwm_vibrator* %9, %struct.pwm_vibrator** %7, align 8
  %10 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %11 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %7, align 8
  %16 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %7, align 8
  %18 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %3
  %22 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %23 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %7, align 8
  %28 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %21, %3
  %30 = load %struct.pwm_vibrator*, %struct.pwm_vibrator** %7, align 8
  %31 = getelementptr inbounds %struct.pwm_vibrator, %struct.pwm_vibrator* %30, i32 0, i32 0
  %32 = call i32 @schedule_work(i32* %31)
  ret i32 0
}

declare dso_local %struct.pwm_vibrator* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
