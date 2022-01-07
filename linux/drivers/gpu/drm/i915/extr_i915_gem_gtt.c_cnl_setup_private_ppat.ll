; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_cnl_setup_private_ppat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_cnl_setup_private_ppat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@GEN8_PPAT_WB = common dso_local global i32 0, align 4
@GEN8_PPAT_LLC = common dso_local global i32 0, align 4
@GEN8_PPAT_WC = common dso_local global i32 0, align 4
@GEN8_PPAT_LLCELLC = common dso_local global i32 0, align 4
@GEN8_PPAT_WT = common dso_local global i32 0, align 4
@GEN8_PPAT_UC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @cnl_setup_private_ppat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnl_setup_private_ppat(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = call i32 @GEN10_PAT_INDEX(i32 0)
  %4 = load i32, i32* @GEN8_PPAT_WB, align 4
  %5 = load i32, i32* @GEN8_PPAT_LLC, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @I915_WRITE(i32 %3, i32 %6)
  %8 = call i32 @GEN10_PAT_INDEX(i32 1)
  %9 = load i32, i32* @GEN8_PPAT_WC, align 4
  %10 = load i32, i32* @GEN8_PPAT_LLCELLC, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @I915_WRITE(i32 %8, i32 %11)
  %13 = call i32 @GEN10_PAT_INDEX(i32 2)
  %14 = load i32, i32* @GEN8_PPAT_WT, align 4
  %15 = load i32, i32* @GEN8_PPAT_LLCELLC, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @I915_WRITE(i32 %13, i32 %16)
  %18 = call i32 @GEN10_PAT_INDEX(i32 3)
  %19 = load i32, i32* @GEN8_PPAT_UC, align 4
  %20 = call i32 @I915_WRITE(i32 %18, i32 %19)
  %21 = call i32 @GEN10_PAT_INDEX(i32 4)
  %22 = load i32, i32* @GEN8_PPAT_WB, align 4
  %23 = load i32, i32* @GEN8_PPAT_LLCELLC, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @GEN8_PPAT_AGE(i32 0)
  %26 = or i32 %24, %25
  %27 = call i32 @I915_WRITE(i32 %21, i32 %26)
  %28 = call i32 @GEN10_PAT_INDEX(i32 5)
  %29 = load i32, i32* @GEN8_PPAT_WB, align 4
  %30 = load i32, i32* @GEN8_PPAT_LLCELLC, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @GEN8_PPAT_AGE(i32 1)
  %33 = or i32 %31, %32
  %34 = call i32 @I915_WRITE(i32 %28, i32 %33)
  %35 = call i32 @GEN10_PAT_INDEX(i32 6)
  %36 = load i32, i32* @GEN8_PPAT_WB, align 4
  %37 = load i32, i32* @GEN8_PPAT_LLCELLC, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @GEN8_PPAT_AGE(i32 2)
  %40 = or i32 %38, %39
  %41 = call i32 @I915_WRITE(i32 %35, i32 %40)
  %42 = call i32 @GEN10_PAT_INDEX(i32 7)
  %43 = load i32, i32* @GEN8_PPAT_WB, align 4
  %44 = load i32, i32* @GEN8_PPAT_LLCELLC, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @GEN8_PPAT_AGE(i32 3)
  %47 = or i32 %45, %46
  %48 = call i32 @I915_WRITE(i32 %42, i32 %47)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @GEN10_PAT_INDEX(i32) #1

declare dso_local i32 @GEN8_PPAT_AGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
