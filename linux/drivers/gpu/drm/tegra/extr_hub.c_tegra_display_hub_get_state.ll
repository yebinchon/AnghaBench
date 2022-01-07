; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_display_hub_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_display_hub_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_display_hub_state = type { i32 }
%struct.tegra_display_hub = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_private_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_display_hub_state* (%struct.tegra_display_hub*, %struct.drm_atomic_state*)* @tegra_display_hub_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_display_hub_state* @tegra_display_hub_get_state(%struct.tegra_display_hub* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.tegra_display_hub_state*, align 8
  %4 = alloca %struct.tegra_display_hub*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_private_state*, align 8
  store %struct.tegra_display_hub* %0, %struct.tegra_display_hub** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %8 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_device* @dev_get_drvdata(i32 %11)
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @drm_modeset_is_locked(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %22 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %22, i32 0, i32 0
  %24 = call %struct.drm_private_state* @drm_atomic_get_private_obj_state(%struct.drm_atomic_state* %21, i32* %23)
  store %struct.drm_private_state* %24, %struct.drm_private_state** %7, align 8
  %25 = load %struct.drm_private_state*, %struct.drm_private_state** %7, align 8
  %26 = call i64 @IS_ERR(%struct.drm_private_state* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.drm_private_state*, %struct.drm_private_state** %7, align 8
  %30 = call %struct.tegra_display_hub_state* @ERR_CAST(%struct.drm_private_state* %29)
  store %struct.tegra_display_hub_state* %30, %struct.tegra_display_hub_state** %3, align 8
  br label %34

31:                                               ; preds = %2
  %32 = load %struct.drm_private_state*, %struct.drm_private_state** %7, align 8
  %33 = call %struct.tegra_display_hub_state* @to_tegra_display_hub_state(%struct.drm_private_state* %32)
  store %struct.tegra_display_hub_state* %33, %struct.tegra_display_hub_state** %3, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.tegra_display_hub_state*, %struct.tegra_display_hub_state** %3, align 8
  ret %struct.tegra_display_hub_state* %35
}

declare dso_local %struct.drm_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_modeset_is_locked(i32*) #1

declare dso_local %struct.drm_private_state* @drm_atomic_get_private_obj_state(%struct.drm_atomic_state*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_private_state*) #1

declare dso_local %struct.tegra_display_hub_state* @ERR_CAST(%struct.drm_private_state*) #1

declare dso_local %struct.tegra_display_hub_state* @to_tegra_display_hub_state(%struct.drm_private_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
