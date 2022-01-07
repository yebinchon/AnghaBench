; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic_plane.c_skl_update_planes_on_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic_plane.c_skl_update_planes_on_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.intel_plane = type { i32 }
%struct.intel_plane_state = type { %struct.intel_plane*, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.skl_ddb_entry = type { i32 }

@I915_MAX_PLANES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skl_update_planes_on_crtc(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1) #0 {
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_plane*, align 8
  %12 = alloca %struct.intel_plane_state*, align 8
  %13 = alloca %struct.intel_plane*, align 8
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %4, align 8
  %14 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %16 = call %struct.intel_crtc_state* @intel_atomic_get_old_crtc_state(%struct.intel_atomic_state* %14, %struct.intel_crtc* %15)
  store %struct.intel_crtc_state* %16, %struct.intel_crtc_state** %5, align 8
  %17 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %18 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %19 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %17, %struct.intel_crtc* %18)
  store %struct.intel_crtc_state* %19, %struct.intel_crtc_state** %6, align 8
  %20 = load i32, i32* @I915_MAX_PLANES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca %struct.skl_ddb_entry, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = load i32, i32* @I915_MAX_PLANES, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca %struct.skl_ddb_entry, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %28 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %31 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(%struct.skl_ddb_entry* %23, i32 %34, i32 4)
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %37 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(%struct.skl_ddb_entry* %26, i32 %40, i32 4)
  br label %42

42:                                               ; preds = %82, %2
  %43 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %44 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %45 = call %struct.intel_plane* @skl_next_plane_to_commit(%struct.intel_atomic_state* %43, %struct.intel_crtc* %44, %struct.skl_ddb_entry* %23, %struct.skl_ddb_entry* %26, i32* %10)
  store %struct.intel_plane* %45, %struct.intel_plane** %11, align 8
  %46 = icmp ne %struct.intel_plane* %45, null
  br i1 %46, label %47, label %83

47:                                               ; preds = %42
  %48 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %49 = load %struct.intel_plane*, %struct.intel_plane** %11, align 8
  %50 = call %struct.intel_plane_state* @intel_atomic_get_new_plane_state(%struct.intel_atomic_state* %48, %struct.intel_plane* %49)
  store %struct.intel_plane_state* %50, %struct.intel_plane_state** %12, align 8
  %51 = load %struct.intel_plane_state*, %struct.intel_plane_state** %12, align 8
  %52 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.intel_plane*, %struct.intel_plane** %11, align 8
  %58 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %59 = load %struct.intel_plane_state*, %struct.intel_plane_state** %12, align 8
  %60 = call i32 @intel_update_plane(%struct.intel_plane* %57, %struct.intel_crtc_state* %58, %struct.intel_plane_state* %59)
  br label %82

61:                                               ; preds = %47
  %62 = load %struct.intel_plane_state*, %struct.intel_plane_state** %12, align 8
  %63 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.intel_plane_state*, %struct.intel_plane_state** %12, align 8
  %68 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %67, i32 0, i32 0
  %69 = load %struct.intel_plane*, %struct.intel_plane** %68, align 8
  store %struct.intel_plane* %69, %struct.intel_plane** %13, align 8
  %70 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %71 = load %struct.intel_plane*, %struct.intel_plane** %13, align 8
  %72 = call %struct.intel_plane_state* @intel_atomic_get_new_plane_state(%struct.intel_atomic_state* %70, %struct.intel_plane* %71)
  store %struct.intel_plane_state* %72, %struct.intel_plane_state** %12, align 8
  %73 = load %struct.intel_plane*, %struct.intel_plane** %11, align 8
  %74 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %75 = load %struct.intel_plane_state*, %struct.intel_plane_state** %12, align 8
  %76 = call i32 @intel_update_slave(%struct.intel_plane* %73, %struct.intel_crtc_state* %74, %struct.intel_plane_state* %75)
  br label %81

77:                                               ; preds = %61
  %78 = load %struct.intel_plane*, %struct.intel_plane** %11, align 8
  %79 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %80 = call i32 @intel_disable_plane(%struct.intel_plane* %78, %struct.intel_crtc_state* %79)
  br label %81

81:                                               ; preds = %77, %66
  br label %82

82:                                               ; preds = %81, %56
  br label %42

83:                                               ; preds = %42
  %84 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %84)
  ret void
}

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_old_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(%struct.skl_ddb_entry*, i32, i32) #1

declare dso_local %struct.intel_plane* @skl_next_plane_to_commit(%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.skl_ddb_entry*, %struct.skl_ddb_entry*, i32*) #1

declare dso_local %struct.intel_plane_state* @intel_atomic_get_new_plane_state(%struct.intel_atomic_state*, %struct.intel_plane*) #1

declare dso_local i32 @intel_update_plane(%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @intel_update_slave(%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @intel_disable_plane(%struct.intel_plane*, %struct.intel_crtc_state*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
