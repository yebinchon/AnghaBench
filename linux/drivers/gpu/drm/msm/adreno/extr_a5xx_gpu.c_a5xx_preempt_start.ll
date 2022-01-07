; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_preempt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_preempt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, %struct.TYPE_2__*, %struct.msm_ringbuffer** }
%struct.TYPE_2__ = type { i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)* }
%struct.msm_ringbuffer = type { i64 }
%struct.adreno_gpu = type { i32 }
%struct.a5xx_gpu = type { i32* }

@CP_SET_PROTECTED_MODE = common dso_local global i32 0, align 4
@REG_A5XX_CP_CONTEXT_SWITCH_SAVE_ADDR_LO = common dso_local global i32 0, align 4
@CP_PREEMPT_ENABLE_GLOBAL = common dso_local global i32 0, align 4
@CP_PREEMPT_ENABLE_LOCAL = common dso_local global i32 0, align 4
@CP_YIELD_ENABLE = common dso_local global i32 0, align 4
@CP_CONTEXT_SWITCH_YIELD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a5xx_preempt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a5xx_preempt_start(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca %struct.a5xx_gpu*, align 8
  %6 = alloca %struct.msm_ringbuffer*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %7 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %8 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %7)
  store %struct.adreno_gpu* %8, %struct.adreno_gpu** %4, align 8
  %9 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %10 = call %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu* %9)
  store %struct.a5xx_gpu* %10, %struct.a5xx_gpu** %5, align 8
  %11 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %12 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %11, i32 0, i32 2
  %13 = load %struct.msm_ringbuffer**, %struct.msm_ringbuffer*** %12, align 8
  %14 = getelementptr inbounds %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %13, i64 0
  %15 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %14, align 8
  store %struct.msm_ringbuffer* %15, %struct.msm_ringbuffer** %6, align 8
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %17 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %101

21:                                               ; preds = %1
  %22 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %23 = load i32, i32* @CP_SET_PROTECTED_MODE, align 4
  %24 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %22, i32 %23, i32 1)
  %25 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %26 = call i32 @OUT_RING(%struct.msm_ringbuffer* %25, i32 0)
  %27 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %28 = load i32, i32* @REG_A5XX_CP_CONTEXT_SWITCH_SAVE_ADDR_LO, align 4
  %29 = call i32 @OUT_PKT4(%struct.msm_ringbuffer* %27, i32 %28, i32 2)
  %30 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %31 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %32 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %35 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lower_32_bits(i32 %38)
  %40 = call i32 @OUT_RING(%struct.msm_ringbuffer* %30, i32 %39)
  %41 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %42 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %43 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %46 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @upper_32_bits(i32 %49)
  %51 = call i32 @OUT_RING(%struct.msm_ringbuffer* %41, i32 %50)
  %52 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %53 = load i32, i32* @CP_SET_PROTECTED_MODE, align 4
  %54 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %52, i32 %53, i32 1)
  %55 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %56 = call i32 @OUT_RING(%struct.msm_ringbuffer* %55, i32 1)
  %57 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %58 = load i32, i32* @CP_PREEMPT_ENABLE_GLOBAL, align 4
  %59 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %57, i32 %58, i32 1)
  %60 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %61 = call i32 @OUT_RING(%struct.msm_ringbuffer* %60, i32 0)
  %62 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %63 = load i32, i32* @CP_PREEMPT_ENABLE_LOCAL, align 4
  %64 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %62, i32 %63, i32 1)
  %65 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %66 = call i32 @OUT_RING(%struct.msm_ringbuffer* %65, i32 1)
  %67 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %68 = load i32, i32* @CP_YIELD_ENABLE, align 4
  %69 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %67, i32 %68, i32 1)
  %70 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %71 = call i32 @OUT_RING(%struct.msm_ringbuffer* %70, i32 1)
  %72 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %73 = load i32, i32* @CP_CONTEXT_SWITCH_YIELD, align 4
  %74 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %72, i32 %73, i32 4)
  %75 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %76 = call i32 @OUT_RING(%struct.msm_ringbuffer* %75, i32 0)
  %77 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %78 = call i32 @OUT_RING(%struct.msm_ringbuffer* %77, i32 0)
  %79 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %80 = call i32 @OUT_RING(%struct.msm_ringbuffer* %79, i32 1)
  %81 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %82 = call i32 @OUT_RING(%struct.msm_ringbuffer* %81, i32 1)
  %83 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %84 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)*, i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)** %86, align 8
  %88 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %89 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %90 = call i32 %87(%struct.msm_gpu* %88, %struct.msm_ringbuffer* %89)
  %91 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %92 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %93 = call i64 @a5xx_idle(%struct.msm_gpu* %91, %struct.msm_ringbuffer* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %21
  br label %99

96:                                               ; preds = %21
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  br label %99

99:                                               ; preds = %96, %95
  %100 = phi i32 [ 0, %95 ], [ %98, %96 ]
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %20
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @OUT_PKT7(%struct.msm_ringbuffer*, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.msm_ringbuffer*, i32) #1

declare dso_local i32 @OUT_PKT4(%struct.msm_ringbuffer*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i64 @a5xx_idle(%struct.msm_gpu*, %struct.msm_ringbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
