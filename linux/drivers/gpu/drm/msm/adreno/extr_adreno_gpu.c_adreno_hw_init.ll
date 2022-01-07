; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, %struct.msm_ringbuffer**, i32 }
%struct.msm_ringbuffer = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.adreno_gpu = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@REG_ADRENO_CP_RB_CNTL = common dso_local global i32 0, align 4
@MSM_GPU_RB_CNTL_DEFAULT = common dso_local global i32 0, align 4
@AXXX_CP_RB_CNTL_NO_UPDATE = common dso_local global i32 0, align 4
@REG_ADRENO_CP_RB_BASE = common dso_local global i32 0, align 4
@REG_ADRENO_CP_RB_BASE_HI = common dso_local global i32 0, align 4
@REG_ADRENO_CP_RB_RPTR_ADDR = common dso_local global i32 0, align 4
@REG_ADRENO_CP_RB_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@rptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adreno_hw_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_ringbuffer*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %8 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %9 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %8)
  store %struct.adreno_gpu* %9, %struct.adreno_gpu** %4, align 8
  %10 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %11 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %15 = call i32 @adreno_load_fw(%struct.adreno_gpu* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %104

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %60, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %24 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %21
  %28 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %29 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %28, i32 0, i32 1
  %30 = load %struct.msm_ringbuffer**, %struct.msm_ringbuffer*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %30, i64 %32
  %34 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %33, align 8
  store %struct.msm_ringbuffer* %34, %struct.msm_ringbuffer** %7, align 8
  %35 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %7, align 8
  %36 = icmp ne %struct.msm_ringbuffer* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %60

38:                                               ; preds = %27
  %39 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %7, align 8
  %40 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %7, align 8
  %43 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %7, align 8
  %45 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %7, align 8
  %48 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %7, align 8
  %50 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %7, align 8
  %53 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 8
  %56 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %7, align 8
  %57 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %38, %37
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %21

63:                                               ; preds = %21
  %64 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %65 = load i32, i32* @REG_ADRENO_CP_RB_CNTL, align 4
  %66 = load i32, i32* @MSM_GPU_RB_CNTL_DEFAULT, align 4
  %67 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %68 = call i64 @adreno_is_a430(%struct.adreno_gpu* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @AXXX_CP_RB_CNTL_NO_UPDATE, align 4
  br label %73

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = or i32 %66, %74
  %76 = call i32 @adreno_gpu_write(%struct.adreno_gpu* %64, i32 %65, i32 %75)
  %77 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %78 = load i32, i32* @REG_ADRENO_CP_RB_BASE, align 4
  %79 = load i32, i32* @REG_ADRENO_CP_RB_BASE_HI, align 4
  %80 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %81 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %80, i32 0, i32 1
  %82 = load %struct.msm_ringbuffer**, %struct.msm_ringbuffer*** %81, align 8
  %83 = getelementptr inbounds %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %82, i64 0
  %84 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %83, align 8
  %85 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @adreno_gpu_write64(%struct.adreno_gpu* %77, i32 %78, i32 %79, i32 %86)
  %88 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %89 = call i64 @adreno_is_a430(%struct.adreno_gpu* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %73
  %92 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %93 = load i32, i32* @REG_ADRENO_CP_RB_RPTR_ADDR, align 4
  %94 = load i32, i32* @REG_ADRENO_CP_RB_RPTR_ADDR_HI, align 4
  %95 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %96 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %95, i32 0, i32 1
  %97 = load %struct.msm_ringbuffer**, %struct.msm_ringbuffer*** %96, align 8
  %98 = getelementptr inbounds %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %97, i64 0
  %99 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %98, align 8
  %100 = load i32, i32* @rptr, align 4
  %101 = call i32 @rbmemptr(%struct.msm_ringbuffer* %99, i32 %100)
  %102 = call i32 @adreno_gpu_write64(%struct.adreno_gpu* %92, i32 %93, i32 %94, i32 %101)
  br label %103

103:                                              ; preds = %91, %73
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %18
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @adreno_load_fw(%struct.adreno_gpu*) #1

declare dso_local i32 @adreno_gpu_write(%struct.adreno_gpu*, i32, i32) #1

declare dso_local i64 @adreno_is_a430(%struct.adreno_gpu*) #1

declare dso_local i32 @adreno_gpu_write64(%struct.adreno_gpu*, i32, i32, i32) #1

declare dso_local i32 @rbmemptr(%struct.msm_ringbuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
