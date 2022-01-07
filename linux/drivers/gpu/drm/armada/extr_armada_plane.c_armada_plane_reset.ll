; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_plane.c_armada_plane_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_plane.c_armada_plane_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i64 }
%struct.armada_plane_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @armada_plane_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.armada_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @__drm_atomic_helper_plane_destroy_state(i64 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %15 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @kfree(i64 %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.armada_plane_state* @kzalloc(i32 4, i32 %18)
  store %struct.armada_plane_state* %19, %struct.armada_plane_state** %3, align 8
  %20 = load %struct.armada_plane_state*, %struct.armada_plane_state** %3, align 8
  %21 = icmp ne %struct.armada_plane_state* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %24 = load %struct.armada_plane_state*, %struct.armada_plane_state** %3, align 8
  %25 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %24, i32 0, i32 0
  %26 = call i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane* %23, i32* %25)
  br label %27

27:                                               ; preds = %22, %13
  ret void
}

declare dso_local i32 @__drm_atomic_helper_plane_destroy_state(i64) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local %struct.armada_plane_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
