; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_setup_vcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_setup_vcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@gen6_bsd_set_default_submission = common dso_local global i32 0, align 4
@gen6_bsd_ring_flush = common dso_local global i32 0, align 4
@GT_BSD_USER_INTERRUPT = common dso_local global i32 0, align 4
@gen6_xcs_emit_breadcrumb = common dso_local global i32 0, align 4
@gen7_xcs_emit_breadcrumb = common dso_local global i32 0, align 4
@bsd_ring_flush = common dso_local global i32 0, align 4
@ILK_BSD_USER_INTERRUPT = common dso_local global i32 0, align 4
@I915_BSD_USER_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @setup_vcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_vcs(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = call i32 @INTEL_GEN(%struct.drm_i915_private* %7)
  %9 = icmp sge i32 %8, 6
  br i1 %9, label %10, label %37

10:                                               ; preds = %1
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = call i64 @IS_GEN(%struct.drm_i915_private* %11, i32 6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @gen6_bsd_set_default_submission, align 4
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %17 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @gen6_bsd_ring_flush, align 4
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %21 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @GT_BSD_USER_INTERRUPT, align 4
  %23 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %24 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = call i64 @IS_GEN(%struct.drm_i915_private* %25, i32 6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @gen6_xcs_emit_breadcrumb, align 4
  %30 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %31 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  br label %36

32:                                               ; preds = %18
  %33 = load i32, i32* @gen7_xcs_emit_breadcrumb, align 4
  %34 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %35 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %28
  br label %53

37:                                               ; preds = %1
  %38 = load i32, i32* @bsd_ring_flush, align 4
  %39 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %40 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = call i64 @IS_GEN(%struct.drm_i915_private* %41, i32 5)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @ILK_BSD_USER_INTERRUPT, align 4
  %46 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %47 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %52

48:                                               ; preds = %37
  %49 = load i32, i32* @I915_BSD_USER_INTERRUPT, align 4
  %50 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %51 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %36
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
