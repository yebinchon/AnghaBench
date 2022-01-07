; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_preempt.c_a5xx_preempt_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_preempt.c_a5xx_preempt_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a5xx_gpu = type { %struct.TYPE_3__**, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64, i64 }

@REG_A5XX_CP_CONTEXT_SWITCH_SMMU_INFO_LO = common dso_local global i32 0, align 4
@REG_A5XX_CP_CONTEXT_SWITCH_SMMU_INFO_HI = common dso_local global i32 0, align 4
@PREEMPT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a5xx_preempt_hw_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca %struct.a5xx_gpu*, align 8
  %5 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %6 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %7 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %6)
  store %struct.adreno_gpu* %7, %struct.adreno_gpu** %3, align 8
  %8 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %9 = call %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu* %8)
  store %struct.a5xx_gpu* %9, %struct.a5xx_gpu** %4, align 8
  %10 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %11 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %16 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %15, i32 0, i32 1
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %16, align 8
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %18 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %74

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %63, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %26 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %23
  %30 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %31 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %32, i64 %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %39 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %40, i64 %42
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %47 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %56 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %57, i64 %59
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %54, i32* %62, align 8
  br label %63

63:                                               ; preds = %29
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %23

66:                                               ; preds = %23
  %67 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %68 = load i32, i32* @REG_A5XX_CP_CONTEXT_SWITCH_SMMU_INFO_LO, align 4
  %69 = load i32, i32* @REG_A5XX_CP_CONTEXT_SWITCH_SMMU_INFO_HI, align 4
  %70 = call i32 @gpu_write64(%struct.msm_gpu* %67, i32 %68, i32 %69, i32 0)
  %71 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %72 = load i32, i32* @PREEMPT_NONE, align 4
  %73 = call i32 @set_preempt_state(%struct.a5xx_gpu* %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %21
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @gpu_write64(%struct.msm_gpu*, i32, i32, i32) #1

declare dso_local i32 @set_preempt_state(%struct.a5xx_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
