; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_hp_sdc.c_hp_sdc_request_timer_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_hp_sdc.c_hp_sdc_request_timer_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32* }

@hp_sdc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HP_SDC_IM_FH = common dso_local global i32 0, align 4
@HP_SDC_IM_PT = common dso_local global i32 0, align 4
@HP_SDC_IM_TIMERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hp_sdc_request_timer_irq(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 5), align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %6
  %13 = call i32 @write_lock_irq(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 2))
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 4), align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = call i32 @write_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 2))
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %12
  %21 = load i32*, i32** %3, align 8
  store i32* %21, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 4), align 8
  %22 = load i32, i32* @HP_SDC_IM_FH, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 3), align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 3), align 4
  %26 = load i32, i32* @HP_SDC_IM_PT, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 3), align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 3), align 4
  %30 = load i32, i32* @HP_SDC_IM_TIMERS, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 3), align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 0), align 8
  %34 = call i32 @write_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 2))
  %35 = call i32 @tasklet_schedule(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 1))
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %20, %16, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
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
