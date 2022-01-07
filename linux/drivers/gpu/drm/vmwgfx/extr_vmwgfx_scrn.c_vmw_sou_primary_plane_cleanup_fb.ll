; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_sou_primary_plane_cleanup_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_sou_primary_plane_cleanup_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.drm_plane_state = type { %struct.drm_crtc* }
%struct.vmw_plane_state = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @vmw_sou_primary_plane_cleanup_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_sou_primary_plane_cleanup_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.vmw_plane_state*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %8 = call %struct.vmw_plane_state* @vmw_plane_state_to_vps(%struct.drm_plane_state* %7)
  store %struct.vmw_plane_state* %8, %struct.vmw_plane_state** %5, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %14 = icmp ne %struct.drm_crtc* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %17 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %19, align 8
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 0
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %23, align 8
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi %struct.drm_crtc* [ %20, %15 ], [ %24, %21 ]
  store %struct.drm_crtc* %26, %struct.drm_crtc** %6, align 8
  %27 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %28 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %33 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vmw_priv(i32 %34)
  %36 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %37 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @vmw_bo_unpin(i32 %35, i64 %38, i32 0)
  br label %40

40:                                               ; preds = %31, %25
  %41 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %42 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %41, i32 0, i32 1
  %43 = call i32 @vmw_bo_unreference(i64* %42)
  %44 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %45 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %47 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %48 = call i32 @vmw_du_plane_cleanup_fb(%struct.drm_plane* %46, %struct.drm_plane_state* %47)
  ret void
}

declare dso_local %struct.vmw_plane_state* @vmw_plane_state_to_vps(%struct.drm_plane_state*) #1

declare dso_local i32 @vmw_bo_unpin(i32, i64, i32) #1

declare dso_local i32 @vmw_priv(i32) #1

declare dso_local i32 @vmw_bo_unreference(i64*) #1

declare dso_local i32 @vmw_du_plane_cleanup_fb(%struct.drm_plane*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
