; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_write_cursor_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_write_cursor_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.skl_ddb_entry*, %struct.TYPE_6__ }
%struct.skl_ddb_entry = type { i32 }
%struct.TYPE_6__ = type { %struct.skl_plane_wm* }
%struct.skl_plane_wm = type { i32, i32* }
%struct.drm_i915_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skl_write_cursor_wm(%struct.intel_plane* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_plane*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.skl_plane_wm*, align 8
  %11 = alloca %struct.skl_ddb_entry*, align 8
  store %struct.intel_plane* %0, %struct.intel_plane** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %12 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %13 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %5, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %18 = call i32 @ilk_wm_max_level(%struct.drm_i915_private* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %20 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %23 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %30, i64 %32
  store %struct.skl_plane_wm* %33, %struct.skl_plane_wm** %10, align 8
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %35 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.skl_ddb_entry*, %struct.skl_ddb_entry** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.skl_ddb_entry, %struct.skl_ddb_entry* %38, i64 %40
  store %struct.skl_ddb_entry* %41, %struct.skl_ddb_entry** %11, align 8
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %58, %2
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @CUR_WM(i32 %48, i32 %49)
  %51 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %10, align 8
  %52 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @skl_write_wm_level(%struct.drm_i915_private* %47, i32 %50, i32* %56)
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %42

61:                                               ; preds = %42
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @CUR_WM_TRANS(i32 %63)
  %65 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %10, align 8
  %66 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %65, i32 0, i32 0
  %67 = call i32 @skl_write_wm_level(%struct.drm_i915_private* %62, i32 %64, i32* %66)
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @CUR_BUF_CFG(i32 %69)
  %71 = load %struct.skl_ddb_entry*, %struct.skl_ddb_entry** %11, align 8
  %72 = call i32 @skl_ddb_entry_write(%struct.drm_i915_private* %68, i32 %70, %struct.skl_ddb_entry* %71)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @ilk_wm_max_level(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_write_wm_level(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local i32 @CUR_WM(i32, i32) #1

declare dso_local i32 @CUR_WM_TRANS(i32) #1

declare dso_local i32 @skl_ddb_entry_write(%struct.drm_i915_private*, i32, %struct.skl_ddb_entry*) #1

declare dso_local i32 @CUR_BUF_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
