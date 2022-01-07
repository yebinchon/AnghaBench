; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_plane_destroy_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_plane_destroy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.vmw_plane_state = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_du_plane_destroy_state(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.vmw_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %6 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %7 = call %struct.vmw_plane_state* @vmw_plane_state_to_vps(%struct.drm_plane_state* %6)
  store %struct.vmw_plane_state* %7, %struct.vmw_plane_state** %5, align 8
  %8 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %9 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %14 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %13, i32 0, i32 1
  %15 = call i32 @vmw_surface_unreference(i64* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %18 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %23 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %22, i32 0, i32 0
  %24 = call i32 @vmw_bo_unreference(i64* %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %27 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %28 = call i32 @drm_atomic_helper_plane_destroy_state(%struct.drm_plane* %26, %struct.drm_plane_state* %27)
  ret void
}

declare dso_local %struct.vmw_plane_state* @vmw_plane_state_to_vps(%struct.drm_plane_state*) #1

declare dso_local i32 @vmw_surface_unreference(i64*) #1

declare dso_local i32 @vmw_bo_unreference(i64*) #1

declare dso_local i32 @drm_atomic_helper_plane_destroy_state(%struct.drm_plane*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
