; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_intel_eld_uptodate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_intel_eld_uptodate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32*, i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32, i32, i32, i32, i32)* @intel_eld_uptodate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_eld_uptodate(%struct.drm_connector* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_i915_private*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.drm_i915_private* @to_i915(i32 %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %14, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %15, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @I915_READ(i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %16, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %64

33:                                               ; preds = %6
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @I915_READ(i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %12, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %16, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @I915_WRITE(i32 %40, i32 %41)
  store i32 0, i32* %17, align 4
  br label %43

43:                                               ; preds = %60, %33
  %44 = load i32, i32* %17, align 4
  %45 = load i32*, i32** %15, align 8
  %46 = call i32 @drm_eld_size(i32* %45)
  %47 = sdiv i32 %46, 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @I915_READ(i32 %50)
  %52 = load i32*, i32** %15, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %51, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %64

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %17, align 4
  br label %43

63:                                               ; preds = %43
  store i32 1, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %58, %32
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @drm_eld_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
