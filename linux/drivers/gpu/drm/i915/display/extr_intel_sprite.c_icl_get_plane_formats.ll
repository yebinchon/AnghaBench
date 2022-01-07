; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_icl_get_plane_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_icl_get_plane_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@icl_hdr_plane_formats = common dso_local global i32* null, align 8
@icl_sdr_y_plane_formats = common dso_local global i32* null, align 8
@icl_sdr_uv_plane_formats = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.drm_i915_private*, i32, i32, i32*)* @icl_get_plane_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @icl_get_plane_formats(%struct.drm_i915_private* %0, i32 %1, i32 %2, i32* %3) #0 {
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
  %11 = load i32, i32* %8, align 4
  %12 = call i64 @icl_is_hdr_plane(%struct.drm_i915_private* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32*, i32** @icl_hdr_plane_formats, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = load i32*, i32** %9, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** @icl_hdr_plane_formats, align 8
  store i32* %18, i32** %5, align 8
  br label %33

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @icl_is_nv12_y_plane(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32*, i32** @icl_sdr_y_plane_formats, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** @icl_sdr_y_plane_formats, align 8
  store i32* %27, i32** %5, align 8
  br label %33

28:                                               ; preds = %19
  %29 = load i32*, i32** @icl_sdr_uv_plane_formats, align 8
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** @icl_sdr_uv_plane_formats, align 8
  store i32* %32, i32** %5, align 8
  br label %33

33:                                               ; preds = %28, %23, %14
  %34 = load i32*, i32** %5, align 8
  ret i32* %34
}

declare dso_local i64 @icl_is_hdr_plane(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @icl_is_nv12_y_plane(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
