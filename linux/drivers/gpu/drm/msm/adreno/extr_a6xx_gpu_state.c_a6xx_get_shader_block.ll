; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_shader_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_shader_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_gpu_state = type { i32 }
%struct.a6xx_shader_block = type { i32, i32 }
%struct.a6xx_gpu_state_obj = type { i32, %struct.a6xx_shader_block* }
%struct.a6xx_crashdumper = type { i32, i32* }

@A6XX_NUM_SHADER_BANKS = common dso_local global i32 0, align 4
@A6XX_CD_DATA_SIZE = common dso_local global i64 0, align 8
@REG_A6XX_HLSQ_DBG_READ_SEL = common dso_local global i32 0, align 4
@REG_A6XX_HLSQ_DBG_AHB_READ_APERTURE = common dso_local global i32 0, align 4
@A6XX_CD_DATA_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_shader_block*, %struct.a6xx_gpu_state_obj*, %struct.a6xx_crashdumper*)* @a6xx_get_shader_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_get_shader_block(%struct.msm_gpu* %0, %struct.a6xx_gpu_state* %1, %struct.a6xx_shader_block* %2, %struct.a6xx_gpu_state_obj* %3, %struct.a6xx_crashdumper* %4) #0 {
  %6 = alloca %struct.msm_gpu*, align 8
  %7 = alloca %struct.a6xx_gpu_state*, align 8
  %8 = alloca %struct.a6xx_shader_block*, align 8
  %9 = alloca %struct.a6xx_gpu_state_obj*, align 8
  %10 = alloca %struct.a6xx_crashdumper*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %6, align 8
  store %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state** %7, align 8
  store %struct.a6xx_shader_block* %2, %struct.a6xx_shader_block** %8, align 8
  store %struct.a6xx_gpu_state_obj* %3, %struct.a6xx_gpu_state_obj** %9, align 8
  store %struct.a6xx_crashdumper* %4, %struct.a6xx_crashdumper** %10, align 8
  %14 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %15 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  %17 = load %struct.a6xx_shader_block*, %struct.a6xx_shader_block** %8, align 8
  %18 = getelementptr inbounds %struct.a6xx_shader_block, %struct.a6xx_shader_block* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @A6XX_NUM_SHADER_BANKS, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @A6XX_CD_DATA_SIZE, align 8
  %26 = icmp ugt i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %87

31:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %61, %31
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @A6XX_NUM_SHADER_BANKS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @REG_A6XX_HLSQ_DBG_READ_SEL, align 4
  %39 = load %struct.a6xx_shader_block*, %struct.a6xx_shader_block** %8, align 8
  %40 = getelementptr inbounds %struct.a6xx_shader_block, %struct.a6xx_shader_block* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = load i32, i32* %13, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @CRASHDUMP_WRITE(i32* %37, i32 %38, i32 %44)
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 %45
  store i32* %47, i32** %11, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* @REG_A6XX_HLSQ_DBG_AHB_READ_APERTURE, align 4
  %50 = load %struct.a6xx_shader_block*, %struct.a6xx_shader_block** %8, align 8
  %51 = getelementptr inbounds %struct.a6xx_shader_block, %struct.a6xx_shader_block* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %54 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @A6XX_CD_DATA_OFFSET, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i64 @CRASHDUMP_READ(i32* %48, i32 %49, i32 %52, i32 %57)
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 %58
  store i32* %60, i32** %11, align 8
  br label %61

61:                                               ; preds = %36
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %32

64:                                               ; preds = %32
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @CRASHDUMP_FINI(i32* %65)
  %67 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %68 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %69 = call i64 @a6xx_crashdumper_run(%struct.msm_gpu* %67, %struct.a6xx_crashdumper* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %87

72:                                               ; preds = %64
  %73 = load %struct.a6xx_shader_block*, %struct.a6xx_shader_block** %8, align 8
  %74 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %9, align 8
  %75 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %74, i32 0, i32 1
  store %struct.a6xx_shader_block* %73, %struct.a6xx_shader_block** %75, align 8
  %76 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %77 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %78 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @A6XX_CD_DATA_OFFSET, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @state_kmemdup(%struct.a6xx_gpu_state* %76, i32* %82, i64 %83)
  %85 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %9, align 8
  %86 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %72, %71, %30
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @CRASHDUMP_WRITE(i32*, i32, i32) #1

declare dso_local i64 @CRASHDUMP_READ(i32*, i32, i32, i32) #1

declare dso_local i32 @CRASHDUMP_FINI(i32*) #1

declare dso_local i64 @a6xx_crashdumper_run(%struct.msm_gpu*, %struct.a6xx_crashdumper*) #1

declare dso_local i32 @state_kmemdup(%struct.a6xx_gpu_state*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
