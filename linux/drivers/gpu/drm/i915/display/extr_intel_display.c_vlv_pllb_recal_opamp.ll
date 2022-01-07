; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_pllb_recal_opamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_pllb_recal_opamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@VLV_REF_DW13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @vlv_pllb_recal_opamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_pllb_recal_opamp(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @VLV_PLL_DW9(i32 1)
  %9 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %6, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, -256
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, 48
  store i32 %13, i32* %5, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @VLV_PLL_DW9(i32 1)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @VLV_REF_DW13, align 4
  %22 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 16777215
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, -1946157056
  store i32 %26, i32* %5, align 4
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @VLV_REF_DW13, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @VLV_PLL_DW9(i32 1)
  %35 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, -256
  store i32 %37, i32* %5, align 4
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @VLV_PLL_DW9(i32 1)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @VLV_REF_DW13, align 4
  %46 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %43, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 16777215
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, -1342177280
  store i32 %50, i32* %5, align 4
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @VLV_REF_DW13, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %51, i32 %52, i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @vlv_dpio_read(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @VLV_PLL_DW9(i32) #1

declare dso_local i32 @vlv_dpio_write(%struct.drm_i915_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
