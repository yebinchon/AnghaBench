; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_set_hwcg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_set_hwcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a6xx_gpu = type { %struct.a6xx_gmu }
%struct.a6xx_gmu = type { i32 }

@REG_A6XX_RBBM_CLOCK_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_GPU_GMU_GX_SPTPRAC_CLOCK_CONTROL = common dso_local global i32 0, align 4
@a6xx_hwcg = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, i32)* @a6xx_set_hwcg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_set_hwcg(%struct.msm_gpu* %0, i32 %1) #0 {
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adreno_gpu*, align 8
  %6 = alloca %struct.a6xx_gpu*, align 8
  %7 = alloca %struct.a6xx_gmu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %11 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %10)
  store %struct.adreno_gpu* %11, %struct.adreno_gpu** %5, align 8
  %12 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %13 = call %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu* %12)
  store %struct.a6xx_gpu* %13, %struct.a6xx_gpu** %6, align 8
  %14 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %6, align 8
  %15 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %14, i32 0, i32 0
  store %struct.a6xx_gmu* %15, %struct.a6xx_gmu** %7, align 8
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %17 = load i32, i32* @REG_A6XX_RBBM_CLOCK_CNTL, align 4
  %18 = call i32 @gpu_read(%struct.msm_gpu* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21, %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, -1968657918
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %21
  br label %75

31:                                               ; preds = %27, %24
  %32 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %7, align 8
  %33 = load i32, i32* @REG_A6XX_GPU_GMU_GX_SPTPRAC_CLOCK_CONTROL, align 4
  %34 = call i32 @gmu_rmw(%struct.a6xx_gmu* %32, i32 %33, i32 1, i32 0)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %61, %31
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @a6xx_hwcg, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %37)
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @a6xx_hwcg, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %40
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @a6xx_hwcg, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  br label %58

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %50
  %59 = phi i32 [ %56, %50 ], [ 0, %57 ]
  %60 = call i32 @gpu_write(%struct.msm_gpu* %41, i32 %47, i32 %59)
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %35

64:                                               ; preds = %35
  %65 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %7, align 8
  %66 = load i32, i32* @REG_A6XX_GPU_GMU_GX_SPTPRAC_CLOCK_CONTROL, align 4
  %67 = call i32 @gmu_rmw(%struct.a6xx_gmu* %65, i32 %66, i32 0, i32 1)
  %68 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %69 = load i32, i32* @REG_A6XX_RBBM_CLOCK_CNTL, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 -1968657918, i32 0
  %74 = call i32 @gpu_write(%struct.msm_gpu* %68, i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %64, %30
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @gmu_rmw(%struct.a6xx_gmu*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
