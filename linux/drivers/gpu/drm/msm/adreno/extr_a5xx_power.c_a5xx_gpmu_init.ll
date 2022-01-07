; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c_a5xx_gpmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c_a5xx_gpmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, %struct.TYPE_2__*, %struct.msm_ringbuffer** }
%struct.TYPE_2__ = type { i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)* }
%struct.msm_ringbuffer = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a5xx_gpu = type { i32, i32 }

@CP_SET_PROTECTED_MODE = common dso_local global i32 0, align 4
@CP_INDIRECT_BUFFER_PFE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s: Unable to load GPMU firmware. GPMU will not be active\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_WFI_CONFIG = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_CM3_SYSRESET = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_GENERAL_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: GPMU firmware initialization timed out\0A\00", align 1
@REG_A5XX_GPMU_GENERAL_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: GPMU firmware initialization failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a5xx_gpmu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a5xx_gpmu_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca %struct.a5xx_gpu*, align 8
  %6 = alloca %struct.msm_ringbuffer*, align 8
  %7 = alloca i64, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %8 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %9 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %8)
  store %struct.adreno_gpu* %9, %struct.adreno_gpu** %4, align 8
  %10 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %11 = call %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu* %10)
  store %struct.a5xx_gpu* %11, %struct.a5xx_gpu** %5, align 8
  %12 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %13 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %12, i32 0, i32 2
  %14 = load %struct.msm_ringbuffer**, %struct.msm_ringbuffer*** %13, align 8
  %15 = getelementptr inbounds %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %14, i64 0
  %16 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %15, align 8
  store %struct.msm_ringbuffer* %16, %struct.msm_ringbuffer** %6, align 8
  %17 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %18 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

22:                                               ; preds = %1
  %23 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %24 = load i32, i32* @CP_SET_PROTECTED_MODE, align 4
  %25 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %23, i32 %24, i32 1)
  %26 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %27 = call i32 @OUT_RING(%struct.msm_ringbuffer* %26, i32 0)
  %28 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %29 = load i32, i32* @CP_INDIRECT_BUFFER_PFE, align 4
  %30 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %28, i32 %29, i32 3)
  %31 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %32 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %33 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @lower_32_bits(i32 %34)
  %36 = call i32 @OUT_RING(%struct.msm_ringbuffer* %31, i32 %35)
  %37 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %38 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %39 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @upper_32_bits(i32 %40)
  %42 = call i32 @OUT_RING(%struct.msm_ringbuffer* %37, i32 %41)
  %43 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %44 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %45 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @OUT_RING(%struct.msm_ringbuffer* %43, i32 %46)
  %48 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %49 = load i32, i32* @CP_SET_PROTECTED_MODE, align 4
  %50 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %48, i32 %49, i32 1)
  %51 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %52 = call i32 @OUT_RING(%struct.msm_ringbuffer* %51, i32 1)
  %53 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %54 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)*, i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)** %56, align 8
  %58 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %59 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %60 = call i32 %57(%struct.msm_gpu* %58, %struct.msm_ringbuffer* %59)
  %61 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %62 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %63 = call i32 @a5xx_idle(%struct.msm_gpu* %61, %struct.msm_ringbuffer* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %22
  %66 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %67 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %111

72:                                               ; preds = %22
  %73 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %74 = call i64 @adreno_is_a530(%struct.adreno_gpu* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %78 = load i32, i32* @REG_A5XX_GPMU_WFI_CONFIG, align 4
  %79 = call i32 @gpu_write(%struct.msm_gpu* %77, i32 %78, i32 16404)
  br label %80

80:                                               ; preds = %76, %72
  %81 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %82 = load i32, i32* @REG_A5XX_GPMU_CM3_SYSRESET, align 4
  %83 = call i32 @gpu_write(%struct.msm_gpu* %81, i32 %82, i32 0)
  %84 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %85 = load i32, i32* @REG_A5XX_GPMU_GENERAL_0, align 4
  %86 = call i64 @spin_usecs(%struct.msm_gpu* %84, i32 25, i32 %85, i32 -1, i32 -1161889074)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %90 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %80
  %94 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %95 = call i64 @adreno_is_a530(%struct.adreno_gpu* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %93
  %98 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %99 = load i32, i32* @REG_A5XX_GPMU_GENERAL_1, align 4
  %100 = call i64 @gpu_read(%struct.msm_gpu* %98, i32 %99)
  store i64 %100, i64* %7, align 8
  %101 = load i64, i64* %7, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %105 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %106, i64 %107)
  br label %109

109:                                              ; preds = %103, %97
  br label %110

110:                                              ; preds = %109, %93
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %65, %21
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @OUT_PKT7(%struct.msm_ringbuffer*, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.msm_ringbuffer*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @a5xx_idle(%struct.msm_gpu*, %struct.msm_ringbuffer*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i64 @adreno_is_a530(%struct.adreno_gpu*) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i64 @spin_usecs(%struct.msm_gpu*, i32, i32, i32, i32) #1

declare dso_local i64 @gpu_read(%struct.msm_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
