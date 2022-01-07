; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.msm_gpu*)*, i32 (%struct.msm_gpu*)* }
%struct.TYPE_4__ = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a6xx_gpu = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"CP_SCRATCH_REG%d: %u\0A\00", align 1
@hang_debug = common dso_local global i64 0, align 8
@REG_A6XX_GMU_GMU_PWR_COL_KEEPALIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @a6xx_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_recover(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca %struct.a6xx_gpu*, align 8
  %5 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %6 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %7 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %6)
  store %struct.adreno_gpu* %7, %struct.adreno_gpu** %3, align 8
  %8 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %9 = call %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu* %8)
  store %struct.a6xx_gpu* %9, %struct.a6xx_gpu** %4, align 8
  %10 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %11 = call i32 @adreno_dump_info(%struct.msm_gpu* %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %26, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %17 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @REG_A6XX_CP_SCRATCH_REG(i32 %22)
  %24 = call i32 @gpu_read(%struct.msm_gpu* %21, i32 %23)
  %25 = call i32 @DRM_DEV_INFO(i32* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %12

29:                                               ; preds = %12
  %30 = load i64, i64* @hang_debug, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %34 = call i32 @a6xx_dump(%struct.msm_gpu* %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %4, align 8
  %37 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %36, i32 0, i32 0
  %38 = load i32, i32* @REG_A6XX_GMU_GMU_PWR_COL_KEEPALIVE, align 4
  %39 = call i32 @gmu_write(i32* %37, i32 %38, i32 0)
  %40 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %41 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32 (%struct.msm_gpu*)*, i32 (%struct.msm_gpu*)** %43, align 8
  %45 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %46 = call i32 %44(%struct.msm_gpu* %45)
  %47 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %48 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.msm_gpu*)*, i32 (%struct.msm_gpu*)** %50, align 8
  %52 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %53 = call i32 %51(%struct.msm_gpu* %52)
  %54 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %55 = call i32 @msm_gpu_hw_init(%struct.msm_gpu* %54)
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @adreno_dump_info(%struct.msm_gpu*) #1

declare dso_local i32 @DRM_DEV_INFO(i32*, i8*, i32, i32) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @REG_A6XX_CP_SCRATCH_REG(i32) #1

declare dso_local i32 @a6xx_dump(%struct.msm_gpu*) #1

declare dso_local i32 @gmu_write(i32*, i32, i32) #1

declare dso_local i32 @msm_gpu_hw_init(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
