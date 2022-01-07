; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_tile_width_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_tile_width_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_framebuffer*, i32)* @intel_tile_width_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tile_width_bytes(%struct.drm_framebuffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %9 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.drm_i915_private* @to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %6, align 8
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %13 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %22 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %62 [
    i32 133, label %24
    i32 132, label %27
    i32 130, label %33
    i32 131, label %38
    i32 128, label %48
    i32 129, label %53
  ]

24:                                               ; preds = %2
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %26 = call i32 @intel_tile_size(%struct.drm_i915_private* %25)
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %2
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %29 = call i32 @IS_GEN(%struct.drm_i915_private* %28, i32 2)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 128, i32* %3, align 4
  br label %68

32:                                               ; preds = %27
  store i32 512, i32* %3, align 4
  br label %68

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 128, i32* %3, align 4
  br label %68

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %2, %37
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %40 = call i32 @IS_GEN(%struct.drm_i915_private* %39, i32 2)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %44 = call i32 @HAS_128_BYTE_Y_TILING(%struct.drm_i915_private* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38
  store i32 128, i32* %3, align 4
  br label %68

47:                                               ; preds = %42
  store i32 512, i32* %3, align 4
  br label %68

48:                                               ; preds = %2
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 128, i32* %3, align 4
  br label %68

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %2, %52
  %54 = load i32, i32* %7, align 4
  switch i32 %54, label %58 [
    i32 1, label %55
    i32 2, label %56
    i32 4, label %56
    i32 8, label %57
    i32 16, label %57
  ]

55:                                               ; preds = %53
  store i32 64, i32* %3, align 4
  br label %68

56:                                               ; preds = %53, %53
  store i32 128, i32* %3, align 4
  br label %68

57:                                               ; preds = %53, %53
  store i32 256, i32* %3, align 4
  br label %68

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @MISSING_CASE(i32 %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %68

62:                                               ; preds = %2
  %63 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %64 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @MISSING_CASE(i32 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %58, %57, %56, %55, %51, %47, %46, %36, %32, %31, %24
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_tile_size(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @HAS_128_BYTE_Y_TILING(%struct.drm_i915_private*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
