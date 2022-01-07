; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gpu = type { %struct.a6xx_gmu, %struct.adreno_gpu }
%struct.a6xx_gmu = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.adreno_gpu = type { %struct.msm_gpu }
%struct.msm_gpu = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"The GMU is not set up yet\0A\00", align 1
@REG_A6XX_GMU_AO_HOST_INTERRUPT_CLR = common dso_local global i32 0, align 4
@REG_A6XX_GMU_AO_HOST_INTERRUPT_MASK = common dso_local global i32 0, align 4
@A6XX_GMU_IRQ_MASK = common dso_local global i32 0, align 4
@REG_A6XX_GMU_GENERAL_7 = common dso_local global i32 0, align 4
@GMU_WARM_BOOT = common dso_local global i32 0, align 4
@GMU_COLD_BOOT = common dso_local global i32 0, align 4
@REG_A6XX_GMU_GMU2HOST_INTR_CLR = common dso_local global i32 0, align 4
@REG_A6XX_GMU_GMU2HOST_INTR_MASK = common dso_local global i32 0, align 4
@A6XX_HFI_IRQ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @a6xx_gmu_resume(%struct.a6xx_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.a6xx_gpu*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca %struct.msm_gpu*, align 8
  %6 = alloca %struct.a6xx_gmu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.a6xx_gpu* %0, %struct.a6xx_gpu** %3, align 8
  %9 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %3, align 8
  %10 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %9, i32 0, i32 1
  store %struct.adreno_gpu* %10, %struct.adreno_gpu** %4, align 8
  %11 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %12 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %11, i32 0, i32 0
  store %struct.msm_gpu* %12, %struct.msm_gpu** %5, align 8
  %13 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %3, align 8
  %14 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %13, i32 0, i32 0
  store %struct.a6xx_gmu* %14, %struct.a6xx_gmu** %6, align 8
  %15 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %16 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %137

24:                                               ; preds = %1
  %25 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %26 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %28 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pm_runtime_get_sync(i32 %29)
  %31 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %32 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_set_rate(i32 %33, i32 200000000)
  %35 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %36 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %39 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_bulk_prepare_enable(i32 %37, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %24
  %45 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %46 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pm_runtime_put(i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %137

50:                                               ; preds = %24
  %51 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %52 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @MBps_to_icc(i32 3072)
  %55 = call i32 @icc_set_bw(i32 %53, i32 0, i32 %54)
  %56 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %57 = load i32, i32* @REG_A6XX_GMU_AO_HOST_INTERRUPT_CLR, align 4
  %58 = call i32 @gmu_write(%struct.a6xx_gmu* %56, i32 %57, i32 -1)
  %59 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %60 = load i32, i32* @REG_A6XX_GMU_AO_HOST_INTERRUPT_MASK, align 4
  %61 = load i32, i32* @A6XX_GMU_IRQ_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = call i32 @gmu_write(%struct.a6xx_gmu* %59, i32 %60, i32 %62)
  %64 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %65 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @enable_irq(i32 %66)
  %68 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %69 = load i32, i32* @REG_A6XX_GMU_GENERAL_7, align 4
  %70 = call i32 @gmu_read(%struct.a6xx_gmu* %68, i32 %69)
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %50
  %73 = load i32, i32* @GMU_WARM_BOOT, align 4
  br label %76

74:                                               ; preds = %50
  %75 = load i32, i32* @GMU_COLD_BOOT, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %7, align 4
  %78 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @a6xx_gmu_fw_start(%struct.a6xx_gmu* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %121

84:                                               ; preds = %76
  %85 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @a6xx_hfi_start(%struct.a6xx_gmu* %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %121

91:                                               ; preds = %84
  %92 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %93 = load i32, i32* @REG_A6XX_GMU_GMU2HOST_INTR_CLR, align 4
  %94 = call i32 @gmu_write(%struct.a6xx_gmu* %92, i32 %93, i32 -1)
  %95 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %96 = load i32, i32* @REG_A6XX_GMU_GMU2HOST_INTR_MASK, align 4
  %97 = load i32, i32* @A6XX_HFI_IRQ_MASK, align 4
  %98 = xor i32 %97, -1
  %99 = call i32 @gmu_write(%struct.a6xx_gmu* %95, i32 %96, i32 %98)
  %100 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %101 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @enable_irq(i32 %102)
  %104 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %105 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %106 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %107, 1
  %109 = call i32 @__a6xx_gmu_set_freq(%struct.a6xx_gmu* %104, i64 %108)
  %110 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %111 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @IS_ERR_OR_NULL(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %91
  %116 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %117 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pm_runtime_get(i32 %118)
  br label %120

120:                                              ; preds = %115, %91
  br label %121

121:                                              ; preds = %120, %90, %83
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %126 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @disable_irq(i32 %127)
  %129 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %130 = call i32 @a6xx_rpmh_stop(%struct.a6xx_gmu* %129)
  %131 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %6, align 8
  %132 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @pm_runtime_put(i32 %133)
  br label %135

135:                                              ; preds = %124, %121
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %44, %23
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_bulk_prepare_enable(i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @icc_set_bw(i32, i32, i32) #1

declare dso_local i32 @MBps_to_icc(i32) #1

declare dso_local i32 @gmu_write(%struct.a6xx_gmu*, i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @gmu_read(%struct.a6xx_gmu*, i32) #1

declare dso_local i32 @a6xx_gmu_fw_start(%struct.a6xx_gmu*, i32) #1

declare dso_local i32 @a6xx_hfi_start(%struct.a6xx_gmu*, i32) #1

declare dso_local i32 @__a6xx_gmu_set_freq(%struct.a6xx_gmu*, i64) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @pm_runtime_get(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @a6xx_rpmh_stop(%struct.a6xx_gmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
