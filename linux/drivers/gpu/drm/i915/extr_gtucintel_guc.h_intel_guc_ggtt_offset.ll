; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_gtucintel_guc.h_intel_guc_ggtt_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_gtucintel_guc.h_intel_guc_ggtt_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32 }
%struct.i915_vma = type { i32 }

@u64 = common dso_local global i32 0, align 4
@GUC_GGTT_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intel_guc*, %struct.i915_vma*)* @intel_guc_ggtt_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_guc_ggtt_offset(%struct.intel_guc* %0, %struct.i915_vma* %1) #0 {
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca %struct.i915_vma*, align 8
  %5 = alloca i64, align 8
  store %struct.intel_guc* %0, %struct.intel_guc** %3, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %4, align 8
  %6 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %7 = call i64 @i915_ggtt_offset(%struct.i915_vma* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %10 = call i64 @i915_ggtt_pin_bias(%struct.i915_vma* %9)
  %11 = icmp slt i64 %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @GEM_BUG_ON(i32 %12)
  %14 = load i32, i32* @u64, align 4
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %17 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GUC_GGTT_TOP, align 4
  %20 = call i32 @range_overflows_t(i32 %14, i64 %15, i32 %18, i32 %19)
  %21 = call i32 @GEM_BUG_ON(i32 %20)
  %22 = load i64, i64* %5, align 8
  ret i64 %22
}

declare dso_local i64 @i915_ggtt_offset(%struct.i915_vma*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @i915_ggtt_pin_bias(%struct.i915_vma*) #1

declare dso_local i32 @range_overflows_t(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
