; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_compute_aligned_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_compute_aligned_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.drm_framebuffer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32*, i32*, %struct.drm_framebuffer*, i32, i32, i32, i32)* @intel_compute_aligned_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_compute_aligned_offset(%struct.drm_i915_private* %0, i32* %1, i32* %2, %struct.drm_framebuffer* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.drm_framebuffer* %3, %struct.drm_framebuffer** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %27 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %8
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %37, %8
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %42 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @is_surface_linear(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %106, label %47

47:                                               ; preds = %40
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %49 = call i32 @intel_tile_size(%struct.drm_i915_private* %48)
  store i32 %49, i32* %20, align 4
  %50 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @intel_tile_dims(%struct.drm_framebuffer* %50, i32 %51, i32* %21, i32* %22)
  %53 = load i32, i32* %15, align 4
  %54 = call i64 @drm_rotation_90_or_270(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %22, align 4
  %59 = udiv i32 %57, %58
  store i32 %59, i32* %25, align 4
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* %22, align 4
  %62 = call i32 @swap(i32 %60, i32 %61)
  br label %69

63:                                               ; preds = %47
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %21, align 4
  %66 = load i32, i32* %17, align 4
  %67 = mul i32 %65, %66
  %68 = udiv i32 %64, %67
  store i32 %68, i32* %25, align 4
  br label %69

69:                                               ; preds = %63, %56
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %22, align 4
  %73 = udiv i32 %71, %72
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %22, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %75, align 4
  %77 = urem i32 %76, %74
  store i32 %77, i32* %75, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %21, align 4
  %81 = udiv i32 %79, %80
  store i32 %81, i32* %24, align 4
  %82 = load i32, i32* %21, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = urem i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* %25, align 4
  %88 = mul i32 %86, %87
  %89 = load i32, i32* %24, align 4
  %90 = add i32 %88, %89
  %91 = load i32, i32* %20, align 4
  %92 = mul i32 %90, %91
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %16, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  store i32 %96, i32* %19, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %25, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %19, align 4
  %105 = call i32 @intel_adjust_tile_offset(i32* %97, i32* %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  br label %137

106:                                              ; preds = %40
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %14, align 4
  %110 = mul i32 %108, %109
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %17, align 4
  %114 = mul i32 %112, %113
  %115 = add i32 %110, %114
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %16, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %116, %118
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %16, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* %14, align 4
  %124 = udiv i32 %122, %123
  %125 = load i32*, i32** %11, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %16, align 4
  %128 = and i32 %126, %127
  %129 = load i32*, i32** %11, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %14, align 4
  %132 = mul i32 %130, %131
  %133 = sub i32 %128, %132
  %134 = load i32, i32* %17, align 4
  %135 = udiv i32 %133, %134
  %136 = load i32*, i32** %10, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %106, %69
  %138 = load i32, i32* %19, align 4
  ret i32 %138
}

declare dso_local i32 @is_surface_linear(i32, i32) #1

declare dso_local i32 @intel_tile_size(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_tile_dims(%struct.drm_framebuffer*, i32, i32*, i32*) #1

declare dso_local i64 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @intel_adjust_tile_offset(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
