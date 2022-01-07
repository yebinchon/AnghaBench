; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_gpu_state = type { i32 }
%struct.a6xx_cluster = type { i32, i32, i32, i32*, i32 }
%struct.a6xx_gpu_state_obj = type { i32, %struct.a6xx_cluster* }
%struct.a6xx_crashdumper = type { i32*, i32 }

@A6XX_CD_DATA_OFFSET = common dso_local global i32 0, align 4
@A6XX_NUM_CONTEXTS = common dso_local global i32 0, align 4
@REG_A6XX_CP_APERTURE_CNTL_CD = common dso_local global i32 0, align 4
@A6XX_CD_DATA_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_cluster*, %struct.a6xx_gpu_state_obj*, %struct.a6xx_crashdumper*)* @a6xx_get_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_get_cluster(%struct.msm_gpu* %0, %struct.a6xx_gpu_state* %1, %struct.a6xx_cluster* %2, %struct.a6xx_gpu_state_obj* %3, %struct.a6xx_crashdumper* %4) #0 {
  %6 = alloca %struct.msm_gpu*, align 8
  %7 = alloca %struct.a6xx_gpu_state*, align 8
  %8 = alloca %struct.a6xx_cluster*, align 8
  %9 = alloca %struct.a6xx_gpu_state_obj*, align 8
  %10 = alloca %struct.a6xx_crashdumper*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %6, align 8
  store %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state** %7, align 8
  store %struct.a6xx_cluster* %2, %struct.a6xx_cluster** %8, align 8
  store %struct.a6xx_gpu_state_obj* %3, %struct.a6xx_gpu_state_obj** %9, align 8
  store %struct.a6xx_crashdumper* %4, %struct.a6xx_crashdumper** %10, align 8
  %18 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %19 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %22 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @A6XX_CD_DATA_OFFSET, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %26 = load %struct.a6xx_cluster*, %struct.a6xx_cluster** %8, align 8
  %27 = getelementptr inbounds %struct.a6xx_cluster, %struct.a6xx_cluster* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %5
  %31 = load i32*, i32** %11, align 8
  %32 = load %struct.a6xx_cluster*, %struct.a6xx_cluster** %8, align 8
  %33 = getelementptr inbounds %struct.a6xx_cluster, %struct.a6xx_cluster* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.a6xx_cluster*, %struct.a6xx_cluster** %8, align 8
  %36 = getelementptr inbounds %struct.a6xx_cluster, %struct.a6xx_cluster* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @CRASHDUMP_WRITE(i32* %31, i32 %34, i32 %37)
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 %38
  store i32* %40, i32** %11, align 8
  br label %41

41:                                               ; preds = %30, %5
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %104, %41
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @A6XX_NUM_CONTEXTS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %107

46:                                               ; preds = %42
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @REG_A6XX_CP_APERTURE_CNTL_CD, align 4
  %49 = load %struct.a6xx_cluster*, %struct.a6xx_cluster** %8, align 8
  %50 = getelementptr inbounds %struct.a6xx_cluster, %struct.a6xx_cluster* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %14, align 4
  %54 = shl i32 %53, 4
  %55 = or i32 %52, %54
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %55, %56
  %58 = call i64 @CRASHDUMP_WRITE(i32* %47, i32 %48, i32 %57)
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 %58
  store i32* %60, i32** %11, align 8
  store i32 0, i32* %16, align 4
  br label %61

61:                                               ; preds = %100, %46
  %62 = load i32, i32* %16, align 4
  %63 = load %struct.a6xx_cluster*, %struct.a6xx_cluster** %8, align 8
  %64 = getelementptr inbounds %struct.a6xx_cluster, %struct.a6xx_cluster* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %103

67:                                               ; preds = %61
  %68 = load %struct.a6xx_cluster*, %struct.a6xx_cluster** %8, align 8
  %69 = getelementptr inbounds %struct.a6xx_cluster, %struct.a6xx_cluster* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @RANGE(i32* %70, i32 %71)
  store i32 %72, i32* %17, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load %struct.a6xx_cluster*, %struct.a6xx_cluster** %8, align 8
  %75 = getelementptr inbounds %struct.a6xx_cluster, %struct.a6xx_cluster* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i64 @CRASHDUMP_READ(i32* %73, i32 %80, i32 %81, i32 %82)
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 %83
  store i32* %85, i32** %11, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %67
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %95, %67
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 2
  store i32 %102, i32* %16, align 4
  br label %61

103:                                              ; preds = %61
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %42

107:                                              ; preds = %42
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @CRASHDUMP_FINI(i32* %108)
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @A6XX_NUM_CONTEXTS, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  store i64 %114, i64* %13, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* @A6XX_CD_DATA_SIZE, align 8
  %117 = icmp ugt i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i64 @WARN_ON(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %107
  br label %143

122:                                              ; preds = %107
  %123 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %124 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %125 = call i64 @a6xx_crashdumper_run(%struct.msm_gpu* %123, %struct.a6xx_crashdumper* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %143

128:                                              ; preds = %122
  %129 = load %struct.a6xx_cluster*, %struct.a6xx_cluster** %8, align 8
  %130 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %9, align 8
  %131 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %130, i32 0, i32 1
  store %struct.a6xx_cluster* %129, %struct.a6xx_cluster** %131, align 8
  %132 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %133 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %134 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* @A6XX_CD_DATA_OFFSET, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i64, i64* %13, align 8
  %140 = call i32 @state_kmemdup(%struct.a6xx_gpu_state* %132, i32* %138, i64 %139)
  %141 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %9, align 8
  %142 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %128, %127, %121
  ret void
}

declare dso_local i64 @CRASHDUMP_WRITE(i32*, i32, i32) #1

declare dso_local i32 @RANGE(i32*, i32) #1

declare dso_local i64 @CRASHDUMP_READ(i32*, i32, i32, i32) #1

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
