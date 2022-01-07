; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_valleyview_init_gt_powersave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_valleyview_init_gt_powersave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i32, i32, i32, i32 }

@VLV_IOSF_SB_PUNIT = common dso_local global i32 0, align 4
@VLV_IOSF_SB_NC = common dso_local global i32 0, align 4
@VLV_IOSF_SB_CCK = common dso_local global i32 0, align 4
@PUNIT_REG_GPU_FREQ_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DDR speed: %d MHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"max GPU freq: %d MHz (%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"RPe GPU freq: %d MHz (%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"RP1(Guar Freq) GPU freq: %d MHz (%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"min GPU freq: %d MHz (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @valleyview_init_gt_powersave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @valleyview_init_gt_powersave(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_rps*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.intel_rps* %7, %struct.intel_rps** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = call i32 @valleyview_setup_pctx(%struct.drm_i915_private* %8)
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = load i32, i32* @VLV_IOSF_SB_PUNIT, align 4
  %12 = call i32 @BIT(i32 %11)
  %13 = load i32, i32* @VLV_IOSF_SB_NC, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = or i32 %12, %14
  %16 = load i32, i32* @VLV_IOSF_SB_CCK, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = or i32 %15, %17
  %19 = call i32 @vlv_iosf_sb_get(%struct.drm_i915_private* %10, i32 %18)
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = call i32 @vlv_init_gpll_ref_freq(%struct.drm_i915_private* %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = load i32, i32* @PUNIT_REG_GPU_FREQ_STS, align 4
  %24 = call i32 @vlv_punit_read(%struct.drm_i915_private* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 6
  %27 = and i32 %26, 3
  switch i32 %27, label %37 [
    i32 0, label %28
    i32 1, label %28
    i32 2, label %31
    i32 3, label %34
  ]

28:                                               ; preds = %1, %1
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  store i32 800, i32* %30, align 4
  br label %37

31:                                               ; preds = %1
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  store i32 1066, i32* %33, align 4
  br label %37

34:                                               ; preds = %1
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  store i32 1333, i32* %36, align 4
  br label %37

37:                                               ; preds = %1, %34, %31, %28
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = call i32 @valleyview_rps_max_freq(%struct.drm_i915_private* %42)
  %44 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %45 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %47 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %50 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %52 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %53 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %51, i32 %54)
  %56 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %57 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %61 = call i32 @valleyview_rps_rpe_freq(%struct.drm_i915_private* %60)
  %62 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %63 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %65 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %66 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %64, i32 %67)
  %69 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %70 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %71)
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %74 = call i32 @valleyview_rps_guar_freq(%struct.drm_i915_private* %73)
  %75 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %76 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %78 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %79 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %77, i32 %80)
  %82 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %83 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %84)
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %87 = call i32 @valleyview_rps_min_freq(%struct.drm_i915_private* %86)
  %88 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %89 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %91 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %92 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %90, i32 %93)
  %95 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %96 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %94, i32 %97)
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %100 = load i32, i32* @VLV_IOSF_SB_PUNIT, align 4
  %101 = call i32 @BIT(i32 %100)
  %102 = load i32, i32* @VLV_IOSF_SB_NC, align 4
  %103 = call i32 @BIT(i32 %102)
  %104 = or i32 %101, %103
  %105 = load i32, i32* @VLV_IOSF_SB_CCK, align 4
  %106 = call i32 @BIT(i32 %105)
  %107 = or i32 %104, %106
  %108 = call i32 @vlv_iosf_sb_put(%struct.drm_i915_private* %99, i32 %107)
  ret void
}

declare dso_local i32 @valleyview_setup_pctx(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_iosf_sb_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vlv_init_gpll_ref_freq(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_punit_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, ...) #1

declare dso_local i32 @valleyview_rps_max_freq(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gpu_freq(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @valleyview_rps_rpe_freq(%struct.drm_i915_private*) #1

declare dso_local i32 @valleyview_rps_guar_freq(%struct.drm_i915_private*) #1

declare dso_local i32 @valleyview_rps_min_freq(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_iosf_sb_put(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
