; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_get_plane_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_get_plane_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@skl_planar_formats = common dso_local global i32* null, align 8
@skl_plane_formats = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.drm_i915_private*, i32, i32, i32*)* @skl_get_plane_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @skl_get_plane_formats(%struct.drm_i915_private* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @skl_plane_has_planar(%struct.drm_i915_private* %10, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32*, i32** @skl_planar_formats, align 8
  %17 = call i32 @ARRAY_SIZE(i32* %16)
  %18 = load i32*, i32** %9, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** @skl_planar_formats, align 8
  store i32* %19, i32** %5, align 8
  br label %25

20:                                               ; preds = %4
  %21 = load i32*, i32** @skl_plane_formats, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = load i32*, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** @skl_plane_formats, align 8
  store i32* %24, i32** %5, align 8
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32*, i32** %5, align 8
  ret i32* %26
}

declare dso_local i64 @skl_plane_has_planar(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
