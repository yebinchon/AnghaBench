; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_gpu_state_get_hlsq_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_gpu_state_get_hlsq_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.msm_gpu = type { i32 }
%struct.a5xx_gpu_state = type { i32 }
%struct.a5xx_crashdumper = type { i32*, i32, i32, i32 }

@SZ_1K = common dso_local global i32 0, align 4
@a5xx_hlsq_aperture_regs = common dso_local global %struct.TYPE_3__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@REG_A5XX_HLSQ_DBG_READ_SEL = common dso_local global i64 0, align 8
@REG_A5XX_HLSQ_DBG_AHB_READ_APERTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a5xx_gpu_state*)* @a5xx_gpu_state_get_hlsq_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a5xx_gpu_state_get_hlsq_regs(%struct.msm_gpu* %0, %struct.a5xx_gpu_state* %1) #0 {
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.a5xx_gpu_state*, align 8
  %5 = alloca %struct.a5xx_crashdumper, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store %struct.a5xx_gpu_state* %1, %struct.a5xx_gpu_state** %4, align 8
  %12 = bitcast %struct.a5xx_crashdumper* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  store i32 0, i32* %7, align 4
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %14 = call i64 @a5xx_crashdumper_init(%struct.msm_gpu* %13, %struct.a5xx_crashdumper* %5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %143

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.a5xx_crashdumper, %struct.a5xx_crashdumper* %5, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = getelementptr inbounds %struct.a5xx_crashdumper, %struct.a5xx_crashdumper* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SZ_1K, align 4
  %23 = mul nsw i32 256, %22
  %24 = add nsw i32 %21, %23
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %39, %17
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @a5xx_hlsq_aperture_regs, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @a5xx_hlsq_aperture_regs, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %25

42:                                               ; preds = %25
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32 @kcalloc(i32 %43, i32 4, i32 %44)
  %46 = load %struct.a5xx_gpu_state*, %struct.a5xx_gpu_state** %4, align 8
  %47 = getelementptr inbounds %struct.a5xx_gpu_state, %struct.a5xx_gpu_state* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.a5xx_gpu_state*, %struct.a5xx_gpu_state** %4, align 8
  %49 = getelementptr inbounds %struct.a5xx_gpu_state, %struct.a5xx_gpu_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  br label %143

53:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %100, %53
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @a5xx_hlsq_aperture_regs, align 8
  %57 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %56)
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %103

59:                                               ; preds = %54
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @a5xx_hlsq_aperture_regs, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @a5xx_hlsq_aperture_regs, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = shl i32 %72, 8
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  %76 = load i64, i64* @REG_A5XX_HLSQ_DBG_READ_SEL, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %77, 44
  %79 = or i32 %78, 2097152
  %80 = or i32 %79, 1
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  %86 = load i64, i64* @REG_A5XX_HLSQ_DBG_AHB_READ_APERTURE, align 8
  %87 = trunc i64 %86 to i32
  %88 = shl i32 %87, 44
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %88, %89
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %8, align 8
  store i32 %90, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %59
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %54

103:                                              ; preds = %54
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %8, align 8
  store i32 0, i32* %104, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %8, align 8
  store i32 0, i32* %106, align 4
  %108 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %109 = call i64 @a5xx_crashdumper_run(%struct.msm_gpu* %108, %struct.a5xx_crashdumper* %5)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %103
  %112 = load %struct.a5xx_gpu_state*, %struct.a5xx_gpu_state** %4, align 8
  %113 = getelementptr inbounds %struct.a5xx_gpu_state, %struct.a5xx_gpu_state* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @kfree(i32 %114)
  %116 = getelementptr inbounds %struct.a5xx_crashdumper, %struct.a5xx_crashdumper* %5, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %119 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @msm_gem_kernel_put(i32 %117, i32 %120, i32 1)
  br label %143

122:                                              ; preds = %103
  %123 = load %struct.a5xx_gpu_state*, %struct.a5xx_gpu_state** %4, align 8
  %124 = getelementptr inbounds %struct.a5xx_gpu_state, %struct.a5xx_gpu_state* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.a5xx_crashdumper, %struct.a5xx_crashdumper* %5, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* @SZ_1K, align 4
  %129 = mul nsw i32 256, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = trunc i64 %134 to i32
  %136 = call i32 @memcpy(i32 %125, i32* %131, i32 %135)
  %137 = getelementptr inbounds %struct.a5xx_crashdumper, %struct.a5xx_crashdumper* %5, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %140 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @msm_gem_kernel_put(i32 %138, i32 %141, i32 1)
  br label %143

143:                                              ; preds = %122, %111, %52, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @a5xx_crashdumper_init(%struct.msm_gpu*, %struct.a5xx_crashdumper*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @kcalloc(i32, i32, i32) #2

declare dso_local i64 @a5xx_crashdumper_run(%struct.msm_gpu*, %struct.a5xx_crashdumper*) #2

declare dso_local i32 @kfree(i32) #2

declare dso_local i32 @msm_gem_kernel_put(i32, i32, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
