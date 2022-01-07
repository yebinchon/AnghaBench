; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_cursor_plane_prepare_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_cursor_plane_prepare_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32 }
%struct.vmw_plane_state = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_du_cursor_plane_prepare_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.vmw_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %8 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %7, i32 0, i32 0
  %9 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_framebuffer* %9, %struct.drm_framebuffer** %5, align 8
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %11 = call %struct.vmw_plane_state* @vmw_plane_state_to_vps(%struct.drm_plane_state* %10)
  store %struct.vmw_plane_state* %11, %struct.vmw_plane_state** %6, align 8
  %12 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %6, align 8
  %13 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %6, align 8
  %18 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %17, i32 0, i32 0
  %19 = call i32 @vmw_surface_unreference(i64* %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %6, align 8
  %22 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %6, align 8
  %27 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %26, i32 0, i32 1
  %28 = call i32 @vmw_bo_unreference(i64* %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %31 = icmp ne %struct.drm_framebuffer* %30, null
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %34 = call %struct.TYPE_6__* @vmw_framebuffer_to_vfb(%struct.drm_framebuffer* %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %40 = call %struct.TYPE_5__* @vmw_framebuffer_to_vfbd(%struct.drm_framebuffer* %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %6, align 8
  %44 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %6, align 8
  %46 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @vmw_bo_reference(i64 %47)
  br label %60

49:                                               ; preds = %32
  %50 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %51 = call %struct.TYPE_4__* @vmw_framebuffer_to_vfbs(%struct.drm_framebuffer* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %6, align 8
  %55 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %6, align 8
  %57 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @vmw_surface_reference(i64 %58)
  br label %60

60:                                               ; preds = %49, %38
  br label %61

61:                                               ; preds = %60, %29
  ret i32 0
}

declare dso_local %struct.vmw_plane_state* @vmw_plane_state_to_vps(%struct.drm_plane_state*) #1

declare dso_local i32 @vmw_surface_unreference(i64*) #1

declare dso_local i32 @vmw_bo_unreference(i64*) #1

declare dso_local %struct.TYPE_6__* @vmw_framebuffer_to_vfb(%struct.drm_framebuffer*) #1

declare dso_local %struct.TYPE_5__* @vmw_framebuffer_to_vfbd(%struct.drm_framebuffer*) #1

declare dso_local i32 @vmw_bo_reference(i64) #1

declare dso_local %struct.TYPE_4__* @vmw_framebuffer_to_vfbs(%struct.drm_framebuffer*) #1

declare dso_local i32 @vmw_surface_reference(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
