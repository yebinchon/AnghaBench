; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_msm-vibrator.c_msm_vibrator_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_msm-vibrator.c_msm_vibrator_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_vibrator = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_vibrator*)* @msm_vibrator_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_vibrator_stop(%struct.msm_vibrator* %0) #0 {
  %2 = alloca %struct.msm_vibrator*, align 8
  store %struct.msm_vibrator* %0, %struct.msm_vibrator** %2, align 8
  %3 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %4 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %7 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %12 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gpiod_set_value_cansleep(i32 %13, i32 0)
  %15 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %16 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regulator_disable(i32 %17)
  %19 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %20 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_disable(i32 %21)
  %23 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %24 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %10, %1
  %26 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %27 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
