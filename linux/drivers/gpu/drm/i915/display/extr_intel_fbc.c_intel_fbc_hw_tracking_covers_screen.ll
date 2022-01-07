; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_hw_tracking_covers_screen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_hw_tracking_covers_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { %struct.intel_fbc }
%struct.intel_fbc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc*)* @intel_fbc_hw_tracking_covers_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_fbc_hw_tracking_covers_screen(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_fbc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %9 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %3, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  store %struct.intel_fbc* %15, %struct.intel_fbc** %4, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = call i32 @INTEL_GEN(%struct.drm_i915_private* %16)
  %18 = icmp sge i32 %17, 10
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %1
  store i32 5120, i32* %7, align 4
  store i32 4096, i32* %8, align 4
  br label %45

24:                                               ; preds = %19
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = call i32 @INTEL_GEN(%struct.drm_i915_private* %25)
  %27 = icmp sge i32 %26, 8
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = call i64 @IS_HASWELL(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24
  store i32 4096, i32* %7, align 4
  store i32 4096, i32* %8, align 4
  br label %44

33:                                               ; preds = %28
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = call i64 @IS_G4X(%struct.drm_i915_private* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = call i32 @INTEL_GEN(%struct.drm_i915_private* %38)
  %40 = icmp sge i32 %39, 5
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33
  store i32 4096, i32* %7, align 4
  store i32 2048, i32* %8, align 4
  br label %43

42:                                               ; preds = %37
  store i32 2048, i32* %7, align 4
  store i32 1536, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %23
  %46 = load %struct.intel_fbc*, %struct.intel_fbc** %4, align 8
  %47 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %46, i32 0, i32 0
  %48 = call i32 @intel_fbc_get_plane_source_size(%struct.TYPE_6__* %47, i32* %5, i32* %6)
  %49 = load %struct.intel_fbc*, %struct.intel_fbc** %4, align 8
  %50 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  %58 = load %struct.intel_fbc*, %struct.intel_fbc** %4, align 8
  %59 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ule i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %45
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ule i32 %71, %72
  br label %74

74:                                               ; preds = %70, %45
  %75 = phi i1 [ false, %45 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  ret i32 %76
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_fbc_get_plane_source_size(%struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
