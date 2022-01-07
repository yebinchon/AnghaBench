; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_plane_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_plane_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i64 }
%struct.vmw_plane_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cannot allocate vmw_plane_state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_du_plane_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.vmw_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @vmw_du_plane_destroy_state(%struct.drm_plane* %9, i64 %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.vmw_plane_state* @kzalloc(i32 4, i32 %15)
  store %struct.vmw_plane_state* %16, %struct.vmw_plane_state** %3, align 8
  %17 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %3, align 8
  %18 = icmp ne %struct.vmw_plane_state* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %26

21:                                               ; preds = %14
  %22 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %23 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %3, align 8
  %24 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %23, i32 0, i32 0
  %25 = call i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane* %22, i32* %24)
  br label %26

26:                                               ; preds = %21, %19
  ret void
}

declare dso_local i32 @vmw_du_plane_destroy_state(%struct.drm_plane*, i64) #1

declare dso_local %struct.vmw_plane_state* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
