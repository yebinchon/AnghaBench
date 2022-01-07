; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_setup_private_pat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_setup_private_pat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @setup_private_pat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_private_pat(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i32 @INTEL_GEN(%struct.drm_i915_private* %3)
  %5 = icmp slt i32 %4, 8
  %6 = zext i1 %5 to i32
  %7 = call i32 @GEM_BUG_ON(i32 %6)
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = call i32 @INTEL_GEN(%struct.drm_i915_private* %8)
  %10 = icmp sge i32 %9, 12
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %13 = call i32 @tgl_setup_private_ppat(%struct.drm_i915_private* %12)
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = call i32 @INTEL_GEN(%struct.drm_i915_private* %15)
  %17 = icmp sge i32 %16, 10
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = call i32 @cnl_setup_private_ppat(%struct.drm_i915_private* %19)
  br label %36

21:                                               ; preds = %14
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %21
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %31 = call i32 @chv_setup_private_ppat(%struct.drm_i915_private* %30)
  br label %35

32:                                               ; preds = %25
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %34 = call i32 @bdw_setup_private_ppat(%struct.drm_i915_private* %33)
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %18
  br label %37

37:                                               ; preds = %36, %11
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @tgl_setup_private_ppat(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_setup_private_ppat(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @chv_setup_private_ppat(%struct.drm_i915_private*) #1

declare dso_local i32 @bdw_setup_private_ppat(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
