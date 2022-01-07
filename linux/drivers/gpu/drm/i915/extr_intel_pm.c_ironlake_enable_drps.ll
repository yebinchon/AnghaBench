; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_enable_drps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_enable_drps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__, %struct.intel_uncore }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.intel_uncore = type { i32 }

@mchdev_lock = common dso_local global i32 0, align 4
@MEMMODECTL = common dso_local global i32 0, align 4
@PMMISC = common dso_local global i32 0, align 4
@MCPPCE_EN = common dso_local global i32 0, align 4
@TSC1 = common dso_local global i32 0, align 4
@TSE = common dso_local global i32 0, align 4
@RCUPEI = common dso_local global i32 0, align 4
@RCDNEI = common dso_local global i32 0, align 4
@RCBMAXAVG = common dso_local global i32 0, align 4
@RCBMINAVG = common dso_local global i32 0, align 4
@MEMIHYST = common dso_local global i32 0, align 4
@MEMMODE_FMAX_MASK = common dso_local global i32 0, align 4
@MEMMODE_FMAX_SHIFT = common dso_local global i32 0, align 4
@MEMMODE_FMIN_MASK = common dso_local global i32 0, align 4
@MEMMODE_FSTART_MASK = common dso_local global i32 0, align 4
@MEMMODE_FSTART_SHIFT = common dso_local global i32 0, align 4
@PXVFREQ_PX_MASK = common dso_local global i32 0, align 4
@PXVFREQ_PX_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"fmax: %d, fmin: %d, fstart: %d\0A\00", align 1
@MEMINTREN = common dso_local global i32 0, align 4
@MEMINT_CX_SUPR_EN = common dso_local global i32 0, align 4
@MEMINT_EVAL_CHG_EN = common dso_local global i32 0, align 4
@VIDSTART = common dso_local global i32 0, align 4
@MEMMODE_SWMODE_EN = common dso_local global i32 0, align 4
@MEMSWCTL = common dso_local global i32 0, align 4
@MEMCTL_CMD_STS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"stuck trying to change perf mode\0A\00", align 1
@DMIEC = common dso_local global i32 0, align 4
@DDREC = common dso_local global i32 0, align 4
@CSIEC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@GFXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @ironlake_enable_drps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_enable_drps(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 1
  store %struct.intel_uncore* %10, %struct.intel_uncore** %3, align 8
  %11 = call i32 @spin_lock_irq(i32* @mchdev_lock)
  %12 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %13 = load i32, i32* @MEMMODECTL, align 4
  %14 = call i32 @intel_uncore_read(%struct.intel_uncore* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %16 = load i32, i32* @PMMISC, align 4
  %17 = load i32, i32* @PMMISC, align 4
  %18 = call i32 @I915_READ(i32 %17)
  %19 = load i32, i32* @MCPPCE_EN, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @intel_uncore_write16(%struct.intel_uncore* %15, i32 %16, i32 %20)
  %22 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %23 = load i32, i32* @TSC1, align 4
  %24 = load i32, i32* @TSC1, align 4
  %25 = call i32 @I915_READ(i32 %24)
  %26 = load i32, i32* @TSE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @intel_uncore_write16(%struct.intel_uncore* %22, i32 %23, i32 %27)
  %29 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %30 = load i32, i32* @RCUPEI, align 4
  %31 = call i32 @intel_uncore_write(%struct.intel_uncore* %29, i32 %30, i32 100000)
  %32 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %33 = load i32, i32* @RCDNEI, align 4
  %34 = call i32 @intel_uncore_write(%struct.intel_uncore* %32, i32 %33, i32 100000)
  %35 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %36 = load i32, i32* @RCBMAXAVG, align 4
  %37 = call i32 @intel_uncore_write(%struct.intel_uncore* %35, i32 %36, i32 90000)
  %38 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %39 = load i32, i32* @RCBMINAVG, align 4
  %40 = call i32 @intel_uncore_write(%struct.intel_uncore* %38, i32 %39, i32 80000)
  %41 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %42 = load i32, i32* @MEMIHYST, align 4
  %43 = call i32 @intel_uncore_write(%struct.intel_uncore* %41, i32 %42, i32 1)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @MEMMODE_FMAX_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @MEMMODE_FMAX_SHIFT, align 4
  %48 = ashr i32 %46, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @MEMMODE_FMIN_MASK, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @MEMMODE_FSTART_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @MEMMODE_FSTART_SHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %7, align 4
  %57 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @PXVFREQ(i32 %58)
  %60 = call i32 @intel_uncore_read(%struct.intel_uncore* %57, i32 %59)
  %61 = load i32, i32* @PXVFREQ_PX_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @PXVFREQ_PX_SHIFT, align 4
  %64 = ashr i32 %62, %63
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %67 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %71 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %75 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %79 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %83 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  %89 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %90 = load i32, i32* @MEMINTREN, align 4
  %91 = load i32, i32* @MEMINT_CX_SUPR_EN, align 4
  %92 = load i32, i32* @MEMINT_EVAL_CHG_EN, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @intel_uncore_write(%struct.intel_uncore* %89, i32 %90, i32 %93)
  %95 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %96 = load i32, i32* @VIDSTART, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @intel_uncore_write(%struct.intel_uncore* %95, i32 %96, i32 %97)
  %99 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %100 = load i32, i32* @VIDSTART, align 4
  %101 = call i32 @intel_uncore_posting_read(%struct.intel_uncore* %99, i32 %100)
  %102 = load i32, i32* @MEMMODE_SWMODE_EN, align 4
  %103 = load i32, i32* %4, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %4, align 4
  %105 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %106 = load i32, i32* @MEMMODECTL, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @intel_uncore_write(%struct.intel_uncore* %105, i32 %106, i32 %107)
  %109 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %110 = load i32, i32* @MEMSWCTL, align 4
  %111 = call i32 @intel_uncore_read(%struct.intel_uncore* %109, i32 %110)
  %112 = load i32, i32* @MEMCTL_CMD_STS, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i64 @wait_for_atomic(i32 %115, i32 10)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %1
  %119 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %1
  %121 = call i32 @mdelay(i32 1)
  %122 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @ironlake_set_drps(%struct.drm_i915_private* %122, i32 %123)
  %125 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %126 = load i32, i32* @DMIEC, align 4
  %127 = call i32 @intel_uncore_read(%struct.intel_uncore* %125, i32 %126)
  %128 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %129 = load i32, i32* @DDREC, align 4
  %130 = call i32 @intel_uncore_read(%struct.intel_uncore* %128, i32 %129)
  %131 = add nsw i32 %127, %130
  %132 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %133 = load i32, i32* @CSIEC, align 4
  %134 = call i32 @intel_uncore_read(%struct.intel_uncore* %132, i32 %133)
  %135 = add nsw i32 %131, %134
  %136 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %137 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 5
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* @jiffies, align 4
  %140 = call i32 @jiffies_to_msecs(i32 %139)
  %141 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %142 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 8
  store i32 %140, i32* %143, align 4
  %144 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %145 = load i32, i32* @GFXEC, align 4
  %146 = call i32 @intel_uncore_read(%struct.intel_uncore* %144, i32 %145)
  %147 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %148 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 6
  store i32 %146, i32* %149, align 4
  %150 = call i32 (...) @ktime_get_raw_ns()
  %151 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %152 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 7
  store i32 %150, i32* %153, align 4
  %154 = call i32 @spin_unlock_irq(i32* @mchdev_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_write16(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @PXVFREQ(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32) #1

declare dso_local i32 @intel_uncore_posting_read(%struct.intel_uncore*, i32) #1

declare dso_local i64 @wait_for_atomic(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ironlake_set_drps(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @ktime_get_raw_ns(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
