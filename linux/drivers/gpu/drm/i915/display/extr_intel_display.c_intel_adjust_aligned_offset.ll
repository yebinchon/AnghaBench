; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_adjust_aligned_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_adjust_aligned_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, %struct.drm_framebuffer*, i32, i32, i32, i64, i64)* @intel_adjust_aligned_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_adjust_aligned_offset(i32* %0, i32* %1, %struct.drm_framebuffer* %2, i32 %3, i32 %4, i32 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.drm_framebuffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.drm_i915_private*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %24 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.drm_i915_private* @to_i915(i32 %25)
  store %struct.drm_i915_private* %26, %struct.drm_i915_private** %17, align 8
  %27 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %28 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %18, align 4
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp sgt i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %42 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @is_surface_linear(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %79, label %47

47:                                               ; preds = %8
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  %49 = call i32 @intel_tile_size(%struct.drm_i915_private* %48)
  store i32 %49, i32* %19, align 4
  %50 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @intel_tile_dims(%struct.drm_framebuffer* %50, i32 %51, i32* %20, i32* %21)
  %53 = load i32, i32* %13, align 4
  %54 = call i64 @drm_rotation_90_or_270(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %21, align 4
  %59 = udiv i32 %57, %58
  store i32 %59, i32* %22, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %21, align 4
  %62 = call i32 @swap(i32 %60, i32 %61)
  br label %69

63:                                               ; preds = %47
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %18, align 4
  %67 = mul i32 %65, %66
  %68 = udiv i32 %64, %67
  store i32 %68, i32* %22, align 4
  br label %69

69:                                               ; preds = %63, %56
  %70 = load i32*, i32** %9, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %22, align 4
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %16, align 8
  %78 = call i32 @intel_adjust_tile_offset(i32* %70, i32* %71, i32 %72, i32 %73, i32 %74, i32 %75, i64 %76, i64 %77)
  br label %114

79:                                               ; preds = %8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %14, align 4
  %83 = mul i32 %81, %82
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %18, align 4
  %87 = mul i32 %85, %86
  %88 = add i32 %83, %87
  %89 = zext i32 %88 to i64
  %90 = load i64, i64* %15, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %15, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* %16, align 8
  %94 = sub nsw i64 %92, %93
  %95 = load i32, i32* %14, align 4
  %96 = zext i32 %95 to i64
  %97 = sdiv i64 %94, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32*, i32** %10, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* %16, align 8
  %102 = sub nsw i64 %100, %101
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %14, align 4
  %106 = mul i32 %104, %105
  %107 = zext i32 %106 to i64
  %108 = sub nsw i64 %102, %107
  %109 = load i32, i32* %18, align 4
  %110 = zext i32 %109 to i64
  %111 = sdiv i64 %108, %110
  %112 = trunc i64 %111 to i32
  %113 = load i32*, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %79, %69
  %115 = load i64, i64* %16, align 8
  ret i64 %115
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_surface_linear(i32, i32) #1

declare dso_local i32 @intel_tile_size(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_tile_dims(%struct.drm_framebuffer*, i32, i32*, i32*) #1

declare dso_local i64 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @intel_adjust_tile_offset(i32*, i32*, i32, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
