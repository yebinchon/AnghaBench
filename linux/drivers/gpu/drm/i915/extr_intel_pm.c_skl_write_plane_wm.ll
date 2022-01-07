; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_write_plane_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_write_plane_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.skl_ddb_entry*, %struct.skl_ddb_entry*, %struct.TYPE_6__ }
%struct.skl_ddb_entry = type { i32 }
%struct.TYPE_6__ = type { %struct.skl_plane_wm* }
%struct.skl_plane_wm = type { i64, i32, i32* }
%struct.drm_i915_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skl_write_plane_wm(%struct.intel_plane* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_plane*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.skl_plane_wm*, align 8
  %11 = alloca %struct.skl_ddb_entry*, align 8
  %12 = alloca %struct.skl_ddb_entry*, align 8
  store %struct.intel_plane* %0, %struct.intel_plane** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %13 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %14 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %5, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = call i32 @ilk_wm_max_level(%struct.drm_i915_private* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %21 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %24 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %27 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %31, i64 %33
  store %struct.skl_plane_wm* %34, %struct.skl_plane_wm** %10, align 8
  %35 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %36 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.skl_ddb_entry*, %struct.skl_ddb_entry** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.skl_ddb_entry, %struct.skl_ddb_entry* %39, i64 %41
  store %struct.skl_ddb_entry* %42, %struct.skl_ddb_entry** %11, align 8
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %44 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.skl_ddb_entry*, %struct.skl_ddb_entry** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.skl_ddb_entry, %struct.skl_ddb_entry* %47, i64 %49
  store %struct.skl_ddb_entry* %50, %struct.skl_ddb_entry** %12, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %68, %2
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @PLANE_WM(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %10, align 8
  %62 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @skl_write_wm_level(%struct.drm_i915_private* %56, i32 %60, i32* %66)
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %51

71:                                               ; preds = %51
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @PLANE_WM_TRANS(i32 %73, i32 %74)
  %76 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %10, align 8
  %77 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %76, i32 0, i32 1
  %78 = call i32 @skl_write_wm_level(%struct.drm_i915_private* %72, i32 %75, i32* %77)
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %80 = call i32 @INTEL_GEN(%struct.drm_i915_private* %79)
  %81 = icmp sge i32 %80, 11
  br i1 %81, label %82, label %89

82:                                               ; preds = %71
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @PLANE_BUF_CFG(i32 %84, i32 %85)
  %87 = load %struct.skl_ddb_entry*, %struct.skl_ddb_entry** %11, align 8
  %88 = call i32 @skl_ddb_entry_write(%struct.drm_i915_private* %83, i32 %86, %struct.skl_ddb_entry* %87)
  br label %111

89:                                               ; preds = %71
  %90 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %10, align 8
  %91 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.skl_ddb_entry*, %struct.skl_ddb_entry** %11, align 8
  %96 = load %struct.skl_ddb_entry*, %struct.skl_ddb_entry** %12, align 8
  %97 = call i32 @swap(%struct.skl_ddb_entry* %95, %struct.skl_ddb_entry* %96)
  br label %98

98:                                               ; preds = %94, %89
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @PLANE_BUF_CFG(i32 %100, i32 %101)
  %103 = load %struct.skl_ddb_entry*, %struct.skl_ddb_entry** %11, align 8
  %104 = call i32 @skl_ddb_entry_write(%struct.drm_i915_private* %99, i32 %102, %struct.skl_ddb_entry* %103)
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @PLANE_NV12_BUF_CFG(i32 %106, i32 %107)
  %109 = load %struct.skl_ddb_entry*, %struct.skl_ddb_entry** %12, align 8
  %110 = call i32 @skl_ddb_entry_write(%struct.drm_i915_private* %105, i32 %108, %struct.skl_ddb_entry* %109)
  br label %111

111:                                              ; preds = %98, %82
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @ilk_wm_max_level(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_write_wm_level(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local i32 @PLANE_WM(i32, i32, i32) #1

declare dso_local i32 @PLANE_WM_TRANS(i32, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_ddb_entry_write(%struct.drm_i915_private*, i32, %struct.skl_ddb_entry*) #1

declare dso_local i32 @PLANE_BUF_CFG(i32, i32) #1

declare dso_local i32 @swap(%struct.skl_ddb_entry*, %struct.skl_ddb_entry*) #1

declare dso_local i32 @PLANE_NV12_BUF_CFG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
