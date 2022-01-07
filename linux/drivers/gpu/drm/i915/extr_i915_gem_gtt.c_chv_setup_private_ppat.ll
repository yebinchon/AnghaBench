; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_chv_setup_private_ppat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_chv_setup_private_ppat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@CHV_PPAT_SNOOP = common dso_local global i32 0, align 4
@GEN8_PRIVATE_PAT_LO = common dso_local global i32 0, align 4
@GEN8_PRIVATE_PAT_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @chv_setup_private_ppat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_setup_private_ppat(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load i32, i32* @CHV_PPAT_SNOOP, align 4
  %5 = call i32 @GEN8_PPAT(i32 0, i32 %4)
  %6 = call i32 @GEN8_PPAT(i32 1, i32 0)
  %7 = or i32 %5, %6
  %8 = call i32 @GEN8_PPAT(i32 2, i32 0)
  %9 = or i32 %7, %8
  %10 = call i32 @GEN8_PPAT(i32 3, i32 0)
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CHV_PPAT_SNOOP, align 4
  %13 = call i32 @GEN8_PPAT(i32 4, i32 %12)
  %14 = or i32 %11, %13
  %15 = load i32, i32* @CHV_PPAT_SNOOP, align 4
  %16 = call i32 @GEN8_PPAT(i32 5, i32 %15)
  %17 = or i32 %14, %16
  %18 = load i32, i32* @CHV_PPAT_SNOOP, align 4
  %19 = call i32 @GEN8_PPAT(i32 6, i32 %18)
  %20 = or i32 %17, %19
  %21 = load i32, i32* @CHV_PPAT_SNOOP, align 4
  %22 = call i32 @GEN8_PPAT(i32 7, i32 %21)
  %23 = or i32 %20, %22
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @GEN8_PRIVATE_PAT_LO, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @lower_32_bits(i32 %25)
  %27 = call i32 @I915_WRITE(i32 %24, i32 %26)
  %28 = load i32, i32* @GEN8_PRIVATE_PAT_HI, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @upper_32_bits(i32 %29)
  %31 = call i32 @I915_WRITE(i32 %28, i32 %30)
  ret void
}

declare dso_local i32 @GEN8_PPAT(i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
