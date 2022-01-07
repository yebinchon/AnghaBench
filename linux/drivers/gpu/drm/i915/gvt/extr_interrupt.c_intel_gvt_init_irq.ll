; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_interrupt.c_intel_gvt_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_interrupt.c_intel_gvt_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.intel_gvt_irq*)* }
%struct.intel_gvt_irq = type { %struct.TYPE_4__*, i32, %struct.intel_gvt_vblank_timer }
%struct.intel_gvt_vblank_timer = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_gvt = type { %struct.intel_gvt_irq }

@.str = private unnamed_addr constant [20 x i8] c"init irq framework\0A\00", align 1
@gen8_irq_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@gen8_irq_map = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@vblank_timer_fn = common dso_local global i32 0, align 4
@VBLANK_TIMER_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gvt_init_irq(%struct.intel_gvt* %0) #0 {
  %2 = alloca %struct.intel_gvt*, align 8
  %3 = alloca %struct.intel_gvt_irq*, align 8
  %4 = alloca %struct.intel_gvt_vblank_timer*, align 8
  store %struct.intel_gvt* %0, %struct.intel_gvt** %2, align 8
  %5 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %6 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %5, i32 0, i32 0
  store %struct.intel_gvt_irq* %6, %struct.intel_gvt_irq** %3, align 8
  %7 = load %struct.intel_gvt_irq*, %struct.intel_gvt_irq** %3, align 8
  %8 = getelementptr inbounds %struct.intel_gvt_irq, %struct.intel_gvt_irq* %7, i32 0, i32 2
  store %struct.intel_gvt_vblank_timer* %8, %struct.intel_gvt_vblank_timer** %4, align 8
  %9 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.intel_gvt_irq*, %struct.intel_gvt_irq** %3, align 8
  %11 = getelementptr inbounds %struct.intel_gvt_irq, %struct.intel_gvt_irq* %10, i32 0, i32 0
  store %struct.TYPE_4__* @gen8_irq_ops, %struct.TYPE_4__** %11, align 8
  %12 = load i32, i32* @gen8_irq_map, align 4
  %13 = load %struct.intel_gvt_irq*, %struct.intel_gvt_irq** %3, align 8
  %14 = getelementptr inbounds %struct.intel_gvt_irq, %struct.intel_gvt_irq* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.intel_gvt_irq*, %struct.intel_gvt_irq** %3, align 8
  %16 = call i32 @init_events(%struct.intel_gvt_irq* %15)
  %17 = load %struct.intel_gvt_irq*, %struct.intel_gvt_irq** %3, align 8
  %18 = getelementptr inbounds %struct.intel_gvt_irq, %struct.intel_gvt_irq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.intel_gvt_irq*)*, i32 (%struct.intel_gvt_irq*)** %20, align 8
  %22 = load %struct.intel_gvt_irq*, %struct.intel_gvt_irq** %3, align 8
  %23 = call i32 %21(%struct.intel_gvt_irq* %22)
  %24 = load %struct.intel_gvt_irq*, %struct.intel_gvt_irq** %3, align 8
  %25 = call i32 @init_irq_map(%struct.intel_gvt_irq* %24)
  %26 = load %struct.intel_gvt_vblank_timer*, %struct.intel_gvt_vblank_timer** %4, align 8
  %27 = getelementptr inbounds %struct.intel_gvt_vblank_timer, %struct.intel_gvt_vblank_timer* %26, i32 0, i32 1
  %28 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %29 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %30 = call i32 @hrtimer_init(%struct.TYPE_3__* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @vblank_timer_fn, align 4
  %32 = load %struct.intel_gvt_vblank_timer*, %struct.intel_gvt_vblank_timer** %4, align 8
  %33 = getelementptr inbounds %struct.intel_gvt_vblank_timer, %struct.intel_gvt_vblank_timer* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @VBLANK_TIMER_PERIOD, align 4
  %36 = load %struct.intel_gvt_vblank_timer*, %struct.intel_gvt_vblank_timer** %4, align 8
  %37 = getelementptr inbounds %struct.intel_gvt_vblank_timer, %struct.intel_gvt_vblank_timer* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  ret i32 0
}

declare dso_local i32 @gvt_dbg_core(i8*) #1

declare dso_local i32 @init_events(%struct.intel_gvt_irq*) #1

declare dso_local i32 @init_irq_map(%struct.intel_gvt_irq*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
