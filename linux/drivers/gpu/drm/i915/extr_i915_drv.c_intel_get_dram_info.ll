; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_intel_get_dram_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_intel_get_dram_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.dram_info }
%struct.dram_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"DRAM bandwidth: %u kBps, channels: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"DRAM ranks: %u, 16Gb DIMMs: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @intel_get_dram_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_get_dram_info(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.dram_info*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  store %struct.dram_info* %6, %struct.dram_info** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %7)
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = load %struct.dram_info*, %struct.dram_info** %3, align 8
  %13 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %15 = call i32 @INTEL_GEN(%struct.drm_i915_private* %14)
  %16 = icmp slt i32 %15, 9
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %48

18:                                               ; preds = %1
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %24 = call i32 @bxt_get_dram_info(%struct.drm_i915_private* %23)
  store i32 %24, i32* %4, align 4
  br label %28

25:                                               ; preds = %18
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = call i32 @skl_get_dram_info(%struct.drm_i915_private* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %48

32:                                               ; preds = %28
  %33 = load %struct.dram_info*, %struct.dram_info** %3, align 8
  %34 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dram_info*, %struct.dram_info** %3, align 8
  %37 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.dram_info*, %struct.dram_info** %3, align 8
  %41 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dram_info*, %struct.dram_info** %3, align 8
  %44 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @yesno(i32 %45)
  %47 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %32, %31, %17
  ret void
}

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_get_dram_info(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_get_dram_info(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @yesno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
