; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_cursor_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_cursor_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.amdgpu_crtc = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @dce_v8_0_cursor_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v8_0_cursor_reset(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.amdgpu_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %4)
  store %struct.amdgpu_crtc* %5, %struct.amdgpu_crtc** %3, align 8
  %6 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = call i32 @dce_v8_0_lock_cursor(%struct.drm_crtc* %11, i32 1)
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dce_v8_0_cursor_move_locked(%struct.drm_crtc* %13, i32 %16, i32 %19)
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %22 = call i32 @dce_v8_0_show_cursor(%struct.drm_crtc* %21)
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %24 = call i32 @dce_v8_0_lock_cursor(%struct.drm_crtc* %23, i32 0)
  br label %25

25:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @dce_v8_0_lock_cursor(%struct.drm_crtc*, i32) #1

declare dso_local i32 @dce_v8_0_cursor_move_locked(%struct.drm_crtc*, i32, i32) #1

declare dso_local i32 @dce_v8_0_show_cursor(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
