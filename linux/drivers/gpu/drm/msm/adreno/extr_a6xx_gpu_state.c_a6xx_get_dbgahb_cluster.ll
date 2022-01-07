; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_dbgahb_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_dbgahb_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_gpu_state = type { i32 }
%struct.a6xx_dbgahb_cluster = type { i32, i32, i32, i64* }
%struct.a6xx_gpu_state_obj = type { i32, %struct.a6xx_dbgahb_cluster* }
%struct.a6xx_crashdumper = type { i32*, i32 }

@A6XX_CD_DATA_OFFSET = common dso_local global i32 0, align 4
@A6XX_NUM_CONTEXTS = common dso_local global i32 0, align 4
@REG_A6XX_HLSQ_DBG_READ_SEL = common dso_local global i32 0, align 4
@REG_A6XX_HLSQ_DBG_AHB_READ_APERTURE = common dso_local global i64 0, align 8
@A6XX_CD_DATA_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_dbgahb_cluster*, %struct.a6xx_gpu_state_obj*, %struct.a6xx_crashdumper*)* @a6xx_get_dbgahb_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_get_dbgahb_cluster(%struct.msm_gpu* %0, %struct.a6xx_gpu_state* %1, %struct.a6xx_dbgahb_cluster* %2, %struct.a6xx_gpu_state_obj* %3, %struct.a6xx_crashdumper* %4) #0 {
  %6 = alloca %struct.msm_gpu*, align 8
  %7 = alloca %struct.a6xx_gpu_state*, align 8
  %8 = alloca %struct.a6xx_dbgahb_cluster*, align 8
  %9 = alloca %struct.a6xx_gpu_state_obj*, align 8
  %10 = alloca %struct.a6xx_crashdumper*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %6, align 8
  store %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state** %7, align 8
  store %struct.a6xx_dbgahb_cluster* %2, %struct.a6xx_dbgahb_cluster** %8, align 8
  store %struct.a6xx_gpu_state_obj* %3, %struct.a6xx_gpu_state_obj** %9, align 8
  store %struct.a6xx_crashdumper* %4, %struct.a6xx_crashdumper** %10, align 8
  %19 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %20 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %11, align 8
  %22 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %23 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @A6XX_CD_DATA_OFFSET, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %96, %5
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @A6XX_NUM_CONTEXTS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %99

31:                                               ; preds = %27
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @REG_A6XX_HLSQ_DBG_READ_SEL, align 4
  %34 = load %struct.a6xx_dbgahb_cluster*, %struct.a6xx_dbgahb_cluster** %8, align 8
  %35 = getelementptr inbounds %struct.a6xx_dbgahb_cluster, %struct.a6xx_dbgahb_cluster* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = mul nsw i32 %37, 2
  %39 = add nsw i32 %36, %38
  %40 = shl i32 %39, 8
  %41 = call i64 @CRASHDUMP_WRITE(i32* %32, i32 %33, i32 %40)
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 %41
  store i32* %43, i32** %11, align 8
  store i32 0, i32* %16, align 4
  br label %44

44:                                               ; preds = %92, %31
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.a6xx_dbgahb_cluster*, %struct.a6xx_dbgahb_cluster** %8, align 8
  %47 = getelementptr inbounds %struct.a6xx_dbgahb_cluster, %struct.a6xx_dbgahb_cluster* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %95

50:                                               ; preds = %44
  %51 = load %struct.a6xx_dbgahb_cluster*, %struct.a6xx_dbgahb_cluster** %8, align 8
  %52 = getelementptr inbounds %struct.a6xx_dbgahb_cluster, %struct.a6xx_dbgahb_cluster* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @RANGE(i64* %53, i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load i64, i64* @REG_A6XX_HLSQ_DBG_AHB_READ_APERTURE, align 8
  %57 = load %struct.a6xx_dbgahb_cluster*, %struct.a6xx_dbgahb_cluster** %8, align 8
  %58 = getelementptr inbounds %struct.a6xx_dbgahb_cluster, %struct.a6xx_dbgahb_cluster* %57, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %56, %63
  %65 = load %struct.a6xx_dbgahb_cluster*, %struct.a6xx_dbgahb_cluster** %8, align 8
  %66 = getelementptr inbounds %struct.a6xx_dbgahb_cluster, %struct.a6xx_dbgahb_cluster* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = ashr i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %64, %69
  store i64 %70, i64* %18, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i64, i64* %18, align 8
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i64 @CRASHDUMP_READ(i32* %71, i64 %72, i32 %73, i32 %74)
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 %75
  store i32* %77, i32** %11, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %50
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %87, %50
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 2
  store i32 %94, i32* %16, align 4
  br label %44

95:                                               ; preds = %44
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %27

99:                                               ; preds = %27
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @CRASHDUMP_FINI(i32* %100)
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @A6XX_NUM_CONTEXTS, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 8
  store i64 %106, i64* %13, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* @A6XX_CD_DATA_SIZE, align 8
  %109 = icmp ugt i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i64 @WARN_ON(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  br label %135

114:                                              ; preds = %99
  %115 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %116 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %117 = call i64 @a6xx_crashdumper_run(%struct.msm_gpu* %115, %struct.a6xx_crashdumper* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %135

120:                                              ; preds = %114
  %121 = load %struct.a6xx_dbgahb_cluster*, %struct.a6xx_dbgahb_cluster** %8, align 8
  %122 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %9, align 8
  %123 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %122, i32 0, i32 1
  store %struct.a6xx_dbgahb_cluster* %121, %struct.a6xx_dbgahb_cluster** %123, align 8
  %124 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %125 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %126 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* @A6XX_CD_DATA_OFFSET, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i64, i64* %13, align 8
  %132 = call i32 @state_kmemdup(%struct.a6xx_gpu_state* %124, i32* %130, i64 %131)
  %133 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %9, align 8
  %134 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %120, %119, %113
  ret void
}

declare dso_local i64 @CRASHDUMP_WRITE(i32*, i32, i32) #1

declare dso_local i32 @RANGE(i64*, i32) #1

declare dso_local i64 @CRASHDUMP_READ(i32*, i64, i32, i32) #1

declare dso_local i32 @CRASHDUMP_FINI(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @a6xx_crashdumper_run(%struct.msm_gpu*, %struct.a6xx_crashdumper*) #1

declare dso_local i32 @state_kmemdup(%struct.a6xx_gpu_state*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
