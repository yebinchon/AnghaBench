; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_enable_mlcg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_enable_mlcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@VIVS_PM_POWER_CONTROLS = common dso_local global i32 0, align 4
@VIVS_PM_POWER_CONTROLS_ENABLE_MODULE_CLOCK_GATING = common dso_local global i32 0, align 4
@VIVS_PM_POWER_CONTROLS_DISABLE_STALL_MODULE_CLOCK_GATING = common dso_local global i32 0, align 4
@VIVS_PM_MODULE_CONTROLS = common dso_local global i32 0, align 4
@chipModel_GC400 = common dso_local global i64 0, align 8
@chipModel_GC420 = common dso_local global i64 0, align 8
@chipMinorFeatures3_BUG_FIXES12 = common dso_local global i32 0, align 4
@VIVS_PM_MODULE_CONTROLS_DISABLE_MODULE_CLOCK_GATING_PA = common dso_local global i32 0, align 4
@chipMinorFeatures0_HZ = common dso_local global i32 0, align 4
@chipMinorFeatures1_DISABLE_PE_GATING = common dso_local global i32 0, align 4
@VIVS_PM_MODULE_CONTROLS_DISABLE_MODULE_CLOCK_GATING_PE = common dso_local global i32 0, align 4
@GC4000 = common dso_local global i32 0, align 4
@GC2000 = common dso_local global i32 0, align 4
@VIVS_PM_MODULE_CONTROLS_DISABLE_MODULE_CLOCK_GATING_TX = common dso_local global i32 0, align 4
@VIVS_PM_MODULE_CONTROLS_DISABLE_MODULE_CLOCK_GATING_RA_HZ = common dso_local global i32 0, align 4
@VIVS_PM_MODULE_CONTROLS_DISABLE_MODULE_CLOCK_GATING_RA_EZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*)* @etnaviv_gpu_enable_mlcg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_gpu_enable_mlcg(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca %struct.etnaviv_gpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %2, align 8
  %5 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %6 = load i32, i32* @VIVS_PM_POWER_CONTROLS, align 4
  %7 = call i32 @gpu_read(%struct.etnaviv_gpu* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @VIVS_PM_POWER_CONTROLS_ENABLE_MODULE_CLOCK_GATING, align 4
  %9 = load i32, i32* %4, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %12 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 17153
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %18 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 17154
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %1
  %23 = load i32, i32* @VIVS_PM_POWER_CONTROLS_DISABLE_STALL_MODULE_CLOCK_GATING, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %16
  %27 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %28 = load i32, i32* @VIVS_PM_POWER_CONTROLS, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @gpu_write(%struct.etnaviv_gpu* %27, i32 %28, i32 %29)
  %31 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %32 = load i32, i32* @VIVS_PM_MODULE_CONTROLS, align 4
  %33 = call i32 @gpu_read(%struct.etnaviv_gpu* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %35 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @chipModel_GC400, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %26
  %41 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %42 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @chipModel_GC420, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %49 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @chipMinorFeatures3_BUG_FIXES12, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @VIVS_PM_MODULE_CONTROLS_DISABLE_MODULE_CLOCK_GATING_PA, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %47, %40, %26
  %60 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %61 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 20480
  br i1 %64, label %65, label %85

65:                                               ; preds = %59
  %66 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %67 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @chipMinorFeatures0_HZ, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %65
  %74 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %75 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @chipMinorFeatures1_DISABLE_PE_GATING, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @VIVS_PM_MODULE_CONTROLS_DISABLE_MODULE_CLOCK_GATING_PE, align 4
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %73, %65, %59
  %86 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %87 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %89, 21538
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = call i32 @BIT(i32 15)
  %93 = load i32, i32* %3, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %85
  %96 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %97 = load i32, i32* @GC4000, align 4
  %98 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %96, i32 %97, i32 21026)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %102 = load i32, i32* @GC2000, align 4
  %103 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %101, i32 %102, i32 20744)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100, %95
  %106 = load i32, i32* @VIVS_PM_MODULE_CONTROLS_DISABLE_MODULE_CLOCK_GATING_TX, align 4
  %107 = load i32, i32* %3, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i32, i32* @VIVS_PM_MODULE_CONTROLS_DISABLE_MODULE_CLOCK_GATING_RA_HZ, align 4
  %111 = load i32, i32* %3, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* @VIVS_PM_MODULE_CONTROLS_DISABLE_MODULE_CLOCK_GATING_RA_EZ, align 4
  %114 = load i32, i32* %3, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %3, align 4
  %116 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %117 = load i32, i32* @VIVS_PM_MODULE_CONTROLS, align 4
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @gpu_write(%struct.etnaviv_gpu* %116, i32 %117, i32 %118)
  ret void
}

declare dso_local i32 @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @gpu_write(%struct.etnaviv_gpu*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
