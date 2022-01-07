; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_vbif_debugbus_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_vbif_debugbus_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_gpu_state = type { i32 }
%struct.a6xx_gpu_state_obj = type { i32*, i32* }

@VBIF_DEBUGBUS_BLOCK_SIZE = common dso_local global i32 0, align 4
@REG_A6XX_VBIF_CLKON = common dso_local global i32 0, align 4
@A6XX_VBIF_CLKON_FORCE_ON_TESTBUS = common dso_local global i32 0, align 4
@REG_A6XX_VBIF_TEST_BUS1_CTRL0 = common dso_local global i32 0, align 4
@REG_A6XX_VBIF_TEST_BUS_OUT_CTRL = common dso_local global i32 0, align 4
@AXI_ARB_BLOCKS = common dso_local global i32 0, align 4
@REG_A6XX_VBIF_TEST_BUS2_CTRL0 = common dso_local global i32 0, align 4
@REG_A6XX_VBIF_TEST_BUS2_CTRL1 = common dso_local global i32 0, align 4
@XIN_AXI_BLOCKS = common dso_local global i32 0, align 4
@XIN_CORE_BLOCKS = common dso_local global i32 0, align 4
@REG_A6XX_VBIF_TEST_BUS1_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state_obj*)* @a6xx_get_vbif_debugbus_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_get_vbif_debugbus_block(%struct.msm_gpu* %0, %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state_obj* %2) #0 {
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca %struct.a6xx_gpu_state*, align 8
  %6 = alloca %struct.a6xx_gpu_state_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %4, align 8
  store %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state** %5, align 8
  store %struct.a6xx_gpu_state_obj* %2, %struct.a6xx_gpu_state_obj** %6, align 8
  %10 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %11 = load i32, i32* @VBIF_DEBUGBUS_BLOCK_SIZE, align 4
  %12 = call i32* @state_kcalloc(%struct.a6xx_gpu_state* %10, i32 %11, i32 4)
  %13 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %6, align 8
  %14 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %6, align 8
  %16 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %106

20:                                               ; preds = %3
  %21 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %6, align 8
  %22 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %24 = load i32, i32* @REG_A6XX_VBIF_CLKON, align 4
  %25 = call i32 @gpu_read(%struct.msm_gpu* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %27 = load i32, i32* @REG_A6XX_VBIF_CLKON, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @A6XX_VBIF_CLKON_FORCE_ON_TESTBUS, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @gpu_write(%struct.msm_gpu* %26, i32 %27, i32 %30)
  %32 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %33 = load i32, i32* @REG_A6XX_VBIF_TEST_BUS1_CTRL0, align 4
  %34 = call i32 @gpu_write(%struct.msm_gpu* %32, i32 %33, i32 0)
  %35 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %36 = load i32, i32* @REG_A6XX_VBIF_TEST_BUS_OUT_CTRL, align 4
  %37 = call i32 @gpu_write(%struct.msm_gpu* %35, i32 %36, i32 1)
  %38 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %6, align 8
  %39 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %57, %20
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @AXI_ARB_BLOCKS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %47 = load i32, i32* @REG_A6XX_VBIF_TEST_BUS2_CTRL0, align 4
  %48 = load i32, i32* @REG_A6XX_VBIF_TEST_BUS2_CTRL1, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 16
  %51 = shl i32 1, %50
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @vbif_debugbus_read(%struct.msm_gpu* %46, i32 %47, i32 %48, i32 %51, i32 16, i32* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %8, align 8
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %41

60:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %76, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @XIN_AXI_BLOCKS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %67 = load i32, i32* @REG_A6XX_VBIF_TEST_BUS2_CTRL0, align 4
  %68 = load i32, i32* @REG_A6XX_VBIF_TEST_BUS2_CTRL1, align 4
  %69 = load i32, i32* %9, align 4
  %70 = shl i32 1, %69
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @vbif_debugbus_read(%struct.msm_gpu* %66, i32 %67, i32 %68, i32 %70, i32 18, i32* %71)
  %73 = load i32*, i32** %8, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %8, align 8
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %61

79:                                               ; preds = %61
  %80 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %81 = load i32, i32* @REG_A6XX_VBIF_TEST_BUS2_CTRL0, align 4
  %82 = call i32 @gpu_write(%struct.msm_gpu* %80, i32 %81, i32 0)
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %98, %79
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @XIN_CORE_BLOCKS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %89 = load i32, i32* @REG_A6XX_VBIF_TEST_BUS1_CTRL0, align 4
  %90 = load i32, i32* @REG_A6XX_VBIF_TEST_BUS1_CTRL1, align 4
  %91 = load i32, i32* %9, align 4
  %92 = shl i32 1, %91
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @vbif_debugbus_read(%struct.msm_gpu* %88, i32 %89, i32 %90, i32 %92, i32 12, i32* %93)
  %95 = load i32*, i32** %8, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %8, align 8
  br label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %83

101:                                              ; preds = %83
  %102 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %103 = load i32, i32* @REG_A6XX_VBIF_CLKON, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @gpu_write(%struct.msm_gpu* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %19
  ret void
}

declare dso_local i32* @state_kcalloc(%struct.a6xx_gpu_state*, i32, i32) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @vbif_debugbus_read(%struct.msm_gpu*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
