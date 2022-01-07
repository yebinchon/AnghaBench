; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_msm-vibrator.c_msm_vibrator_play_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_msm-vibrator.c_msm_vibrator_play_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.msm_vibrator = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* @msm_vibrator_play_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_vibrator_play_effect(%struct.input_dev* %0, i8* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.msm_vibrator*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %6, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %9 = call %struct.msm_vibrator* @input_get_drvdata(%struct.input_dev* %8)
  store %struct.msm_vibrator* %9, %struct.msm_vibrator** %7, align 8
  %10 = load %struct.msm_vibrator*, %struct.msm_vibrator** %7, align 8
  %11 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %14 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %21 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.msm_vibrator*, %struct.msm_vibrator** %7, align 8
  %26 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %35

27:                                               ; preds = %3
  %28 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %29 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.msm_vibrator*, %struct.msm_vibrator** %7, align 8
  %34 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %27, %19
  %36 = load %struct.msm_vibrator*, %struct.msm_vibrator** %7, align 8
  %37 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %36, i32 0, i32 2
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.msm_vibrator*, %struct.msm_vibrator** %7, align 8
  %40 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %39, i32 0, i32 1
  %41 = call i32 @schedule_work(i32* %40)
  ret i32 0
}

declare dso_local %struct.msm_vibrator* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
