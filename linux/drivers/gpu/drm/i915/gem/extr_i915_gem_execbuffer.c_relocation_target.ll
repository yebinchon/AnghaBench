; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_relocation_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_relocation_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_relocation_entry = type { i64 }
%struct.i915_vma = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_relocation_entry*, %struct.i915_vma*)* @relocation_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @relocation_target(%struct.drm_i915_gem_relocation_entry* %0, %struct.i915_vma* %1) #0 {
  %3 = alloca %struct.drm_i915_gem_relocation_entry*, align 8
  %4 = alloca %struct.i915_vma*, align 8
  store %struct.drm_i915_gem_relocation_entry* %0, %struct.drm_i915_gem_relocation_entry** %3, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %4, align 8
  %5 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %3, align 8
  %6 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = sext i32 %8 to i64
  %10 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %11 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %9, %13
  %15 = call i32 @gen8_canonical_addr(i64 %14)
  ret i32 %15
}

declare dso_local i32 @gen8_canonical_addr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
