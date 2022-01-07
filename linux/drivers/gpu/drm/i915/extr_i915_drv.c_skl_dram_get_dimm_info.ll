; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_skl_dram_get_dimm_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_skl_dram_get_dimm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.dram_dimm_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [65 x i8] c"CH%u DIMM %c size: %u GB, width: X%u, ranks: %u, 16Gb DIMMs: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.dram_dimm_info*, i32, i8, i32)* @skl_dram_get_dimm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_dram_get_dimm_info(%struct.drm_i915_private* %0, %struct.dram_dimm_info* %1, i32 %2, i8 signext %3, i32 %4) #0 {
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.dram_dimm_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store %struct.dram_dimm_info* %1, %struct.dram_dimm_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %12 = call i32 @INTEL_GEN(%struct.drm_i915_private* %11)
  %13 = icmp sge i32 %12, 10
  br i1 %13, label %14, label %27

14:                                               ; preds = %5
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @cnl_get_dimm_size(i32 %15)
  %17 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %7, align 8
  %18 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @cnl_get_dimm_width(i32 %19)
  %21 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %7, align 8
  %22 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @cnl_get_dimm_ranks(i32 %23)
  %25 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %7, align 8
  %26 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %40

27:                                               ; preds = %5
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @skl_get_dimm_size(i32 %28)
  %30 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %7, align 8
  %31 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @skl_get_dimm_width(i32 %32)
  %34 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %7, align 8
  %35 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @skl_get_dimm_ranks(i32 %36)
  %38 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %7, align 8
  %39 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %27, %14
  %41 = load i32, i32* %8, align 4
  %42 = load i8, i8* %9, align 1
  %43 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %7, align 8
  %44 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %7, align 8
  %47 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %7, align 8
  %50 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %7, align 8
  %53 = call i32 @skl_is_16gb_dimm(%struct.dram_dimm_info* %52)
  %54 = call i32 @yesno(i32 %53)
  %55 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %41, i8 signext %42, i32 %45, i32 %48, i32 %51, i32 %54)
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_get_dimm_size(i32) #1

declare dso_local i32 @cnl_get_dimm_width(i32) #1

declare dso_local i32 @cnl_get_dimm_ranks(i32) #1

declare dso_local i32 @skl_get_dimm_size(i32) #1

declare dso_local i32 @skl_get_dimm_width(i32) #1

declare dso_local i32 @skl_get_dimm_ranks(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i8 signext, i32, i32, i32, i32) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @skl_is_16gb_dimm(%struct.dram_dimm_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
