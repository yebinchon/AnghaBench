; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_bxt_vtd_ggtt_insert_entries__BKL.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_bxt_vtd_ggtt_insert_entries__BKL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { i32 }
%struct.i915_vma = type { i32 }
%struct.insert_entries = type { i32, i32, %struct.i915_vma*, %struct.i915_address_space* }

@bxt_vtd_ggtt_insert_entries__cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_address_space*, %struct.i915_vma*, i32, i32)* @bxt_vtd_ggtt_insert_entries__BKL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_vtd_ggtt_insert_entries__BKL(%struct.i915_address_space* %0, %struct.i915_vma* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i915_address_space*, align 8
  %6 = alloca %struct.i915_vma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.insert_entries, align 8
  store %struct.i915_address_space* %0, %struct.i915_address_space** %5, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds %struct.insert_entries, %struct.insert_entries* %9, i32 0, i32 0
  %11 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %12 = ptrtoint %struct.i915_address_space* %11 to i32
  store i32 %12, i32* %10, align 8
  %13 = getelementptr inbounds %struct.insert_entries, %struct.insert_entries* %9, i32 0, i32 1
  %14 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %15 = ptrtoint %struct.i915_vma* %14 to i32
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.insert_entries, %struct.insert_entries* %9, i32 0, i32 2
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.i915_vma*
  store %struct.i915_vma* %19, %struct.i915_vma** %16, align 8
  %20 = getelementptr inbounds %struct.insert_entries, %struct.insert_entries* %9, i32 0, i32 3
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.i915_address_space*
  store %struct.i915_address_space* %23, %struct.i915_address_space** %20, align 8
  %24 = load i32, i32* @bxt_vtd_ggtt_insert_entries__cb, align 4
  %25 = call i32 @stop_machine(i32 %24, %struct.insert_entries* %9, i32* null)
  ret void
}

declare dso_local i32 @stop_machine(i32, %struct.insert_entries*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
