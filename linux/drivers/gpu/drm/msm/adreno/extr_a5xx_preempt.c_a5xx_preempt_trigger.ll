; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_preempt.c_a5xx_preempt_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_preempt.c_a5xx_preempt_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a5xx_gpu = type { i32, %struct.msm_ringbuffer*, i32*, %struct.TYPE_2__**, %struct.msm_ringbuffer* }
%struct.TYPE_2__ = type { i32 }
%struct.msm_ringbuffer = type { i64, i32 }

@PREEMPT_NONE = common dso_local global i32 0, align 4
@PREEMPT_START = common dso_local global i32 0, align 4
@PREEMPT_ABORT = common dso_local global i32 0, align 4
@REG_A5XX_CP_CONTEXT_SWITCH_RESTORE_ADDR_LO = common dso_local global i32 0, align 4
@REG_A5XX_CP_CONTEXT_SWITCH_RESTORE_ADDR_HI = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PREEMPT_TRIGGERED = common dso_local global i32 0, align 4
@REG_A5XX_CP_CONTEXT_SWITCH_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a5xx_preempt_trigger(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca %struct.a5xx_gpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.msm_ringbuffer*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %7 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %8 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %7)
  store %struct.adreno_gpu* %8, %struct.adreno_gpu** %3, align 8
  %9 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %10 = call %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu* %9)
  store %struct.a5xx_gpu* %10, %struct.a5xx_gpu** %4, align 8
  %11 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %12 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %94

16:                                               ; preds = %1
  %17 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %18 = load i32, i32* @PREEMPT_NONE, align 4
  %19 = load i32, i32* @PREEMPT_START, align 4
  %20 = call i32 @try_preempt_state(%struct.a5xx_gpu* %17, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %94

23:                                               ; preds = %16
  %24 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %25 = call %struct.msm_ringbuffer* @get_next_ring(%struct.msm_gpu* %24)
  store %struct.msm_ringbuffer* %25, %struct.msm_ringbuffer** %6, align 8
  %26 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %27 = icmp ne %struct.msm_ringbuffer* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %30 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %29, i32 0, i32 4
  %31 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %30, align 8
  %32 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %33 = icmp eq %struct.msm_ringbuffer* %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28, %23
  %35 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %36 = load i32, i32* @PREEMPT_ABORT, align 4
  %37 = call i32 @set_preempt_state(%struct.a5xx_gpu* %35, i32 %36)
  %38 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %39 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %40 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %39, i32 0, i32 4
  %41 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %40, align 8
  %42 = call i32 @update_wptr(%struct.msm_gpu* %38, %struct.msm_ringbuffer* %41)
  %43 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %44 = load i32, i32* @PREEMPT_NONE, align 4
  %45 = call i32 @set_preempt_state(%struct.a5xx_gpu* %43, i32 %44)
  br label %94

46:                                               ; preds = %28
  %47 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %48 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %47, i32 0, i32 1
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %52 = call i32 @get_wptr(%struct.msm_ringbuffer* %51)
  %53 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %54 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %54, align 8
  %56 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %57 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %55, i64 %58
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %52, i32* %61, align 4
  %62 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %63 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %62, i32 0, i32 1
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %67 = load i32, i32* @REG_A5XX_CP_CONTEXT_SWITCH_RESTORE_ADDR_LO, align 4
  %68 = load i32, i32* @REG_A5XX_CP_CONTEXT_SWITCH_RESTORE_ADDR_HI, align 4
  %69 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %70 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %73 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @gpu_write64(%struct.msm_gpu* %66, i32 %67, i32 %68, i32 %76)
  %78 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %79 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %80 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %79, i32 0, i32 1
  store %struct.msm_ringbuffer* %78, %struct.msm_ringbuffer** %80, align 8
  %81 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %82 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %81, i32 0, i32 0
  %83 = load i64, i64* @jiffies, align 8
  %84 = call i64 @msecs_to_jiffies(i32 10000)
  %85 = add nsw i64 %83, %84
  %86 = call i32 @mod_timer(i32* %82, i64 %85)
  %87 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %88 = load i32, i32* @PREEMPT_TRIGGERED, align 4
  %89 = call i32 @set_preempt_state(%struct.a5xx_gpu* %87, i32 %88)
  %90 = call i32 (...) @wmb()
  %91 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %92 = load i32, i32* @REG_A5XX_CP_CONTEXT_SWITCH_CNTL, align 4
  %93 = call i32 @gpu_write(%struct.msm_gpu* %91, i32 %92, i32 1)
  br label %94

94:                                               ; preds = %46, %34, %22, %15
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @try_preempt_state(%struct.a5xx_gpu*, i32, i32) #1

declare dso_local %struct.msm_ringbuffer* @get_next_ring(%struct.msm_gpu*) #1

declare dso_local i32 @set_preempt_state(%struct.a5xx_gpu*, i32) #1

declare dso_local i32 @update_wptr(%struct.msm_gpu*, %struct.msm_ringbuffer*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_wptr(%struct.msm_ringbuffer*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gpu_write64(%struct.msm_gpu*, i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
