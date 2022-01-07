; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_bdw_setup_private_ppat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_bdw_setup_private_ppat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@GEN8_PPAT_WB = common dso_local global i32 0, align 4
@GEN8_PPAT_LLC = common dso_local global i32 0, align 4
@GEN8_PPAT_WC = common dso_local global i32 0, align 4
@GEN8_PPAT_LLCELLC = common dso_local global i32 0, align 4
@GEN8_PPAT_WT = common dso_local global i32 0, align 4
@GEN8_PPAT_UC = common dso_local global i32 0, align 4
@GEN8_PRIVATE_PAT_LO = common dso_local global i32 0, align 4
@GEN8_PRIVATE_PAT_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @bdw_setup_private_ppat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdw_setup_private_ppat(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load i32, i32* @GEN8_PPAT_WB, align 4
  %5 = load i32, i32* @GEN8_PPAT_LLC, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @GEN8_PPAT(i32 0, i32 %6)
  %8 = load i32, i32* @GEN8_PPAT_WC, align 4
  %9 = load i32, i32* @GEN8_PPAT_LLCELLC, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @GEN8_PPAT(i32 1, i32 %10)
  %12 = or i32 %7, %11
  %13 = load i32, i32* @GEN8_PPAT_WT, align 4
  %14 = load i32, i32* @GEN8_PPAT_LLCELLC, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @GEN8_PPAT(i32 2, i32 %15)
  %17 = or i32 %12, %16
  %18 = load i32, i32* @GEN8_PPAT_UC, align 4
  %19 = call i32 @GEN8_PPAT(i32 3, i32 %18)
  %20 = or i32 %17, %19
  %21 = load i32, i32* @GEN8_PPAT_WB, align 4
  %22 = load i32, i32* @GEN8_PPAT_LLCELLC, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @GEN8_PPAT_AGE(i32 0)
  %25 = or i32 %23, %24
  %26 = call i32 @GEN8_PPAT(i32 4, i32 %25)
  %27 = or i32 %20, %26
  %28 = load i32, i32* @GEN8_PPAT_WB, align 4
  %29 = load i32, i32* @GEN8_PPAT_LLCELLC, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @GEN8_PPAT_AGE(i32 1)
  %32 = or i32 %30, %31
  %33 = call i32 @GEN8_PPAT(i32 5, i32 %32)
  %34 = or i32 %27, %33
  %35 = load i32, i32* @GEN8_PPAT_WB, align 4
  %36 = load i32, i32* @GEN8_PPAT_LLCELLC, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @GEN8_PPAT_AGE(i32 2)
  %39 = or i32 %37, %38
  %40 = call i32 @GEN8_PPAT(i32 6, i32 %39)
  %41 = or i32 %34, %40
  %42 = load i32, i32* @GEN8_PPAT_WB, align 4
  %43 = load i32, i32* @GEN8_PPAT_LLCELLC, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @GEN8_PPAT_AGE(i32 3)
  %46 = or i32 %44, %45
  %47 = call i32 @GEN8_PPAT(i32 7, i32 %46)
  %48 = or i32 %41, %47
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @GEN8_PRIVATE_PAT_LO, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @lower_32_bits(i32 %50)
  %52 = call i32 @I915_WRITE(i32 %49, i32 %51)
  %53 = load i32, i32* @GEN8_PRIVATE_PAT_HI, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @upper_32_bits(i32 %54)
  %56 = call i32 @I915_WRITE(i32 %53, i32 %55)
  ret void
}

declare dso_local i32 @GEN8_PPAT(i32, i32) #1

declare dso_local i32 @GEN8_PPAT_AGE(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
