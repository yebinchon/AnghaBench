; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ldu.c_vmw_ldu_primary_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ldu.c_vmw_ldu_primary_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_plane_state = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.vmw_private = type { i32 }
%struct.vmw_legacy_display_unit = type { i32 }
%struct.vmw_framebuffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @vmw_ldu_primary_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_ldu_primary_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca %struct.vmw_legacy_display_unit*, align 8
  %7 = alloca %struct.vmw_framebuffer*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = sext i32 %14 to i64
  %18 = inttoptr i64 %17 to %struct.drm_crtc*
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %21 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %20, i32 0, i32 0
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %21, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi %struct.drm_crtc* [ %18, %16 ], [ %22, %19 ]
  store %struct.drm_crtc* %24, %struct.drm_crtc** %9, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %26 = call %struct.vmw_legacy_display_unit* @vmw_crtc_to_ldu(%struct.drm_crtc* %25)
  store %struct.vmw_legacy_display_unit* %26, %struct.vmw_legacy_display_unit** %6, align 8
  %27 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %28 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.vmw_private* @vmw_priv(i32 %29)
  store %struct.vmw_private* %30, %struct.vmw_private** %5, align 8
  %31 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %32 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %34, align 8
  store %struct.drm_framebuffer* %35, %struct.drm_framebuffer** %8, align 8
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %37 = icmp ne %struct.drm_framebuffer* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %40 = call %struct.vmw_framebuffer* @vmw_framebuffer_to_vfb(%struct.drm_framebuffer* %39)
  br label %42

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi %struct.vmw_framebuffer* [ %40, %38 ], [ null, %41 ]
  store %struct.vmw_framebuffer* %43, %struct.vmw_framebuffer** %7, align 8
  %44 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %7, align 8
  %45 = icmp ne %struct.vmw_framebuffer* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %48 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %49 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %7, align 8
  %50 = call i32 @vmw_ldu_add_active(%struct.vmw_private* %47, %struct.vmw_legacy_display_unit* %48, %struct.vmw_framebuffer* %49)
  br label %55

51:                                               ; preds = %42
  %52 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %53 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %54 = call i32 @vmw_ldu_del_active(%struct.vmw_private* %52, %struct.vmw_legacy_display_unit* %53)
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %57 = call i32 @vmw_ldu_commit_list(%struct.vmw_private* %56)
  ret void
}

declare dso_local %struct.vmw_legacy_display_unit* @vmw_crtc_to_ldu(%struct.drm_crtc*) #1

declare dso_local %struct.vmw_private* @vmw_priv(i32) #1

declare dso_local %struct.vmw_framebuffer* @vmw_framebuffer_to_vfb(%struct.drm_framebuffer*) #1

declare dso_local i32 @vmw_ldu_add_active(%struct.vmw_private*, %struct.vmw_legacy_display_unit*, %struct.vmw_framebuffer*) #1

declare dso_local i32 @vmw_ldu_del_active(%struct.vmw_private*, %struct.vmw_legacy_display_unit*) #1

declare dso_local i32 @vmw_ldu_commit_list(%struct.vmw_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
