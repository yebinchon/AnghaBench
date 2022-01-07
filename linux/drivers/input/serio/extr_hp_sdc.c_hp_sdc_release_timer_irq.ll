; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_hp_sdc.c_hp_sdc_release_timer_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_hp_sdc.c_hp_sdc_release_timer_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32* }

@hp_sdc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@HP_SDC_IM_TIMERS = common dso_local global i32 0, align 4
@HP_SDC_IM_FH = common dso_local global i32 0, align 4
@HP_SDC_IM_PT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hp_sdc_release_timer_irq(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = call i32 @write_lock_irq(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 2))
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 4), align 8
  %7 = icmp ne i32* %5, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 4), align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8, %1
  %12 = call i32 @write_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 2))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 4), align 8
  %16 = load i32, i32* @HP_SDC_IM_TIMERS, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 3), align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 3), align 4
  %19 = load i32, i32* @HP_SDC_IM_FH, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 3), align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 3), align 4
  %22 = load i32, i32* @HP_SDC_IM_PT, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 3), align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 0), align 8
  %25 = call i32 @write_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 2))
  %26 = call i32 @tasklet_schedule(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 1))
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %15, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
