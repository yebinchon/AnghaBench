; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_plane.c_armada_plane_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_plane.c_armada_plane_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32 }
%struct.drm_plane = type { i32 }
%struct.armada_plane_state = type { %struct.drm_plane_state }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_plane_state* @armada_plane_duplicate_state(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane_state*, align 8
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.armada_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  %5 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %6 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %16 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.armada_plane_state* @kmemdup(i32 %17, i32 4, i32 %18)
  store %struct.armada_plane_state* %19, %struct.armada_plane_state** %4, align 8
  %20 = load %struct.armada_plane_state*, %struct.armada_plane_state** %4, align 8
  %21 = icmp ne %struct.armada_plane_state* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %24 = load %struct.armada_plane_state*, %struct.armada_plane_state** %4, align 8
  %25 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %24, i32 0, i32 0
  %26 = call i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane* %23, %struct.drm_plane_state* %25)
  br label %27

27:                                               ; preds = %22, %14
  %28 = load %struct.armada_plane_state*, %struct.armada_plane_state** %4, align 8
  %29 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %28, i32 0, i32 0
  store %struct.drm_plane_state* %29, %struct.drm_plane_state** %2, align 8
  br label %30

30:                                               ; preds = %27, %13
  %31 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  ret %struct.drm_plane_state* %31
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.armada_plane_state* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
