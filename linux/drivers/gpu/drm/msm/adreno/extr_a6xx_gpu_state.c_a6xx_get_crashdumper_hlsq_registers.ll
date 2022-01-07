; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_crashdumper_hlsq_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_crashdumper_hlsq_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_gpu_state = type { i32 }
%struct.a6xx_registers = type { i32, i32*, i32, i32 }
%struct.a6xx_gpu_state_obj = type { i32, %struct.a6xx_registers* }
%struct.a6xx_crashdumper = type { i32*, i32 }

@A6XX_CD_DATA_OFFSET = common dso_local global i32 0, align 4
@REG_A6XX_HLSQ_DBG_READ_SEL = common dso_local global i32 0, align 4
@REG_A6XX_HLSQ_DBG_AHB_READ_APERTURE = common dso_local global i32 0, align 4
@A6XX_CD_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_registers*, %struct.a6xx_gpu_state_obj*, %struct.a6xx_crashdumper*)* @a6xx_get_crashdumper_hlsq_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_get_crashdumper_hlsq_registers(%struct.msm_gpu* %0, %struct.a6xx_gpu_state* %1, %struct.a6xx_registers* %2, %struct.a6xx_gpu_state_obj* %3, %struct.a6xx_crashdumper* %4) #0 {
  %6 = alloca %struct.msm_gpu*, align 8
  %7 = alloca %struct.a6xx_gpu_state*, align 8
  %8 = alloca %struct.a6xx_registers*, align 8
  %9 = alloca %struct.a6xx_gpu_state_obj*, align 8
  %10 = alloca %struct.a6xx_crashdumper*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %6, align 8
  store %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state** %7, align 8
  store %struct.a6xx_registers* %2, %struct.a6xx_registers** %8, align 8
  store %struct.a6xx_gpu_state_obj* %3, %struct.a6xx_gpu_state_obj** %9, align 8
  store %struct.a6xx_crashdumper* %4, %struct.a6xx_crashdumper** %10, align 8
  %17 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %18 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %21 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @A6XX_CD_DATA_OFFSET, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* @REG_A6XX_HLSQ_DBG_READ_SEL, align 4
  %27 = load %struct.a6xx_registers*, %struct.a6xx_registers** %8, align 8
  %28 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @CRASHDUMP_WRITE(i32* %25, i32 %26, i32 %29)
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 %30
  store i32* %32, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %76, %5
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.a6xx_registers*, %struct.a6xx_registers** %8, align 8
  %36 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %33
  %40 = load %struct.a6xx_registers*, %struct.a6xx_registers** %8, align 8
  %41 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @RANGE(i32* %42, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* @REG_A6XX_HLSQ_DBG_AHB_READ_APERTURE, align 4
  %46 = load %struct.a6xx_registers*, %struct.a6xx_registers** %8, align 8
  %47 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %45, %52
  %54 = load %struct.a6xx_registers*, %struct.a6xx_registers** %8, align 8
  %55 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = ashr i32 %56, 2
  %58 = sub nsw i32 %53, %57
  store i32 %58, i32* %16, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i64 @CRASHDUMP_READ(i32* %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 %63
  store i32* %65, i32** %11, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %39
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 2
  store i32 %78, i32* %13, align 4
  br label %33

79:                                               ; preds = %33
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @CRASHDUMP_FINI(i32* %80)
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = load i32, i32* @A6XX_CD_DATA_SIZE, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp ugt i64 %84, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @WARN_ON(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %116

92:                                               ; preds = %79
  %93 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %94 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %95 = call i64 @a6xx_crashdumper_run(%struct.msm_gpu* %93, %struct.a6xx_crashdumper* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %116

98:                                               ; preds = %92
  %99 = load %struct.a6xx_registers*, %struct.a6xx_registers** %8, align 8
  %100 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %9, align 8
  %101 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %100, i32 0, i32 1
  store %struct.a6xx_registers* %99, %struct.a6xx_registers** %101, align 8
  %102 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %103 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %104 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @A6XX_CD_DATA_OFFSET, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = call i32 @state_kmemdup(%struct.a6xx_gpu_state* %102, i32* %108, i32 %112)
  %114 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %9, align 8
  %115 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %98, %97, %91
  ret void
}

declare dso_local i64 @CRASHDUMP_WRITE(i32*, i32, i32) #1

declare dso_local i32 @RANGE(i32*, i32) #1

declare dso_local i64 @CRASHDUMP_READ(i32*, i32, i32, i32) #1

declare dso_local i32 @CRASHDUMP_FINI(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @a6xx_crashdumper_run(%struct.msm_gpu*, %struct.a6xx_crashdumper*) #1

declare dso_local i32 @state_kmemdup(%struct.a6xx_gpu_state*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
