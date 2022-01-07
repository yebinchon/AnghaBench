; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_plane_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_plane_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32 }
%struct.drm_plane = type { i32 }
%struct.vmw_plane_state = type { %struct.drm_plane_state, i64, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_plane_state* @vmw_du_plane_duplicate_state(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane_state*, align 8
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.vmw_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  %6 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %7 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.vmw_plane_state* @kmemdup(i32 %8, i32 40, i32 %9)
  store %struct.vmw_plane_state* %10, %struct.vmw_plane_state** %5, align 8
  %11 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %12 = icmp ne %struct.vmw_plane_state* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %16 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %18 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %20 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %25 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @vmw_surface_reference(i64 %26)
  br label %28

28:                                               ; preds = %23, %14
  %29 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %30 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %35 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @vmw_bo_reference(i64 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %5, align 8
  %40 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %39, i32 0, i32 0
  store %struct.drm_plane_state* %40, %struct.drm_plane_state** %4, align 8
  %41 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %42 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %43 = call i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane* %41, %struct.drm_plane_state* %42)
  %44 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  store %struct.drm_plane_state* %44, %struct.drm_plane_state** %2, align 8
  br label %45

45:                                               ; preds = %38, %13
  %46 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  ret %struct.drm_plane_state* %46
}

declare dso_local %struct.vmw_plane_state* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @vmw_surface_reference(i64) #1

declare dso_local i32 @vmw_bo_reference(i64) #1

declare dso_local i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
