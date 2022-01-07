; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_cherryview_init_gt_powersave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_cherryview_init_gt_powersave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i32, i32, i32, i32 }

@VLV_IOSF_SB_PUNIT = common dso_local global i32 0, align 4
@VLV_IOSF_SB_NC = common dso_local global i32 0, align 4
@VLV_IOSF_SB_CCK = common dso_local global i32 0, align 4
@CCK_FUSE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DDR speed: %d MHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"max GPU freq: %d MHz (%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"RPe GPU freq: %d MHz (%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"RP1(Guar) GPU freq: %d MHz (%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"min GPU freq: %d MHz (%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Odd GPU freq values\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @cherryview_init_gt_powersave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cherryview_init_gt_powersave(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_rps*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.intel_rps* %7, %struct.intel_rps** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = call i32 @cherryview_setup_pctx(%struct.drm_i915_private* %8)
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
  %23 = load i32, i32* @CCK_FUSE_REG, align 4
  %24 = call i32 @vlv_cck_read(%struct.drm_i915_private* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 2
  %27 = and i32 %26, 7
  switch i32 %27, label %31 [
    i32 3, label %28
  ]

28:                                               ; preds = %1
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  store i32 2000, i32* %30, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  store i32 1600, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %40 = call i32 @cherryview_rps_max_freq(%struct.drm_i915_private* %39)
  %41 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %42 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %44 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %47 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %49 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %50 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %48, i32 %51)
  %53 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %54 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %58 = call i32 @cherryview_rps_rpe_freq(%struct.drm_i915_private* %57)
  %59 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %60 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %62 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %63 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %61, i32 %64)
  %66 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %67 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %71 = call i32 @cherryview_rps_guar_freq(%struct.drm_i915_private* %70)
  %72 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %73 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %75 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %76 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %74, i32 %77)
  %79 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %80 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %81)
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %84 = call i32 @cherryview_rps_min_freq(%struct.drm_i915_private* %83)
  %85 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %86 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %88 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %89 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %87, i32 %90)
  %92 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %93 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %97 = load i32, i32* @VLV_IOSF_SB_PUNIT, align 4
  %98 = call i32 @BIT(i32 %97)
  %99 = load i32, i32* @VLV_IOSF_SB_NC, align 4
  %100 = call i32 @BIT(i32 %99)
  %101 = or i32 %98, %100
  %102 = load i32, i32* @VLV_IOSF_SB_CCK, align 4
  %103 = call i32 @BIT(i32 %102)
  %104 = or i32 %101, %103
  %105 = call i32 @vlv_iosf_sb_put(%struct.drm_i915_private* %96, i32 %104)
  %106 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %107 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %110 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %108, %111
  %113 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %114 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %112, %115
  %117 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %118 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %116, %119
  %121 = and i32 %120, 1
  %122 = call i32 @WARN_ONCE(i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cherryview_setup_pctx(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_iosf_sb_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vlv_init_gpll_ref_freq(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_cck_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, ...) #1

declare dso_local i32 @cherryview_rps_max_freq(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gpu_freq(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @cherryview_rps_rpe_freq(%struct.drm_i915_private*) #1

declare dso_local i32 @cherryview_rps_guar_freq(%struct.drm_i915_private*) #1

declare dso_local i32 @cherryview_rps_min_freq(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_iosf_sb_put(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
