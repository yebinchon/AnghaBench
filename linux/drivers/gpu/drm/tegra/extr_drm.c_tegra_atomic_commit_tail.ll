; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_tegra_atomic_commit_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_tegra_atomic_commit_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { %struct.drm_device* }
%struct.drm_device = type { %struct.tegra_drm* }
%struct.tegra_drm = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_atomic_state*)* @tegra_atomic_commit_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_atomic_commit_tail(%struct.drm_atomic_state* %0) #0 {
  %2 = alloca %struct.drm_atomic_state*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.tegra_drm*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %2, align 8
  %5 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %6 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %5, i32 0, i32 0
  %7 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.tegra_drm*, %struct.tegra_drm** %9, align 8
  store %struct.tegra_drm* %10, %struct.tegra_drm** %4, align 8
  %11 = load %struct.tegra_drm*, %struct.tegra_drm** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %18 = call i32 @drm_atomic_helper_commit_modeset_disables(%struct.drm_device* %16, %struct.drm_atomic_state* %17)
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %21 = call i32 @tegra_display_hub_atomic_commit(%struct.drm_device* %19, %struct.drm_atomic_state* %20)
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %24 = call i32 @drm_atomic_helper_commit_planes(%struct.drm_device* %22, %struct.drm_atomic_state* %23, i32 0)
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %27 = call i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device* %25, %struct.drm_atomic_state* %26)
  %28 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %29 = call i32 @drm_atomic_helper_commit_hw_done(%struct.drm_atomic_state* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %32 = call i32 @drm_atomic_helper_wait_for_vblanks(%struct.drm_device* %30, %struct.drm_atomic_state* %31)
  %33 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %34 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %35 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %33, %struct.drm_atomic_state* %34)
  br label %39

36:                                               ; preds = %1
  %37 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %38 = call i32 @drm_atomic_helper_commit_tail_rpm(%struct.drm_atomic_state* %37)
  br label %39

39:                                               ; preds = %36, %15
  ret void
}

declare dso_local i32 @drm_atomic_helper_commit_modeset_disables(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @tegra_display_hub_atomic_commit(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_planes(%struct.drm_device*, %struct.drm_atomic_state*, i32) #1

declare dso_local i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_hw_done(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_wait_for_vblanks(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_tail_rpm(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
