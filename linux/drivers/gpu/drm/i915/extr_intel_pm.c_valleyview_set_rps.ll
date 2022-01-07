; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_valleyview_set_rps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_valleyview_set_rps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Odd GPU freq value\0A\00", align 1
@GEN6_PMINTRMSK = common dso_local global i32 0, align 4
@PUNIT_REG_GPU_FREQ_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @valleyview_set_rps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valleyview_set_rps(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %8 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ false, %2 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ONCE(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, -2
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* @GEN6_PMINTRMSK, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @gen6_rps_pm_mask(%struct.drm_i915_private* %24, i32 %25)
  %27 = call i32 @I915_WRITE(i32 %23, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %28, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %22
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %37 = call i32 @vlv_punit_get(%struct.drm_i915_private* %36)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %39 = load i32, i32* @PUNIT_REG_GPU_FREQ_REQ, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @vlv_punit_write(%struct.drm_i915_private* %38, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %43 = call i32 @vlv_punit_put(%struct.drm_i915_private* %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %62

48:                                               ; preds = %35
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @gen6_set_rps_thresholds(%struct.drm_i915_private* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %22
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %58, i32 %59)
  %61 = call i32 @trace_intel_gpu_freq_change(i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %52, %46
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @gen6_rps_pm_mask(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_punit_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_punit_write(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @vlv_punit_put(%struct.drm_i915_private*) #1

declare dso_local i32 @gen6_set_rps_thresholds(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @trace_intel_gpu_freq_change(i32) #1

declare dso_local i32 @intel_gpu_freq(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
