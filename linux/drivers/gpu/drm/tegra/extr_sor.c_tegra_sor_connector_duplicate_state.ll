; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_connector_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_connector_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { i32 }
%struct.drm_connector = type { i32 }
%struct.tegra_sor_state = type { %struct.drm_connector_state }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_connector_state* (%struct.drm_connector*)* @tegra_sor_connector_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_connector_state* @tegra_sor_connector_duplicate_state(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector_state*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.tegra_sor_state*, align 8
  %5 = alloca %struct.tegra_sor_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.tegra_sor_state* @to_sor_state(i32 %8)
  store %struct.tegra_sor_state* %9, %struct.tegra_sor_state** %4, align 8
  %10 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tegra_sor_state* @kmemdup(%struct.tegra_sor_state* %10, i32 4, i32 %11)
  store %struct.tegra_sor_state* %12, %struct.tegra_sor_state** %5, align 8
  %13 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %5, align 8
  %14 = icmp ne %struct.tegra_sor_state* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.drm_connector_state* null, %struct.drm_connector_state** %2, align 8
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %18 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %5, align 8
  %19 = getelementptr inbounds %struct.tegra_sor_state, %struct.tegra_sor_state* %18, i32 0, i32 0
  %20 = call i32 @__drm_atomic_helper_connector_duplicate_state(%struct.drm_connector* %17, %struct.drm_connector_state* %19)
  %21 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %5, align 8
  %22 = getelementptr inbounds %struct.tegra_sor_state, %struct.tegra_sor_state* %21, i32 0, i32 0
  store %struct.drm_connector_state* %22, %struct.drm_connector_state** %2, align 8
  br label %23

23:                                               ; preds = %16, %15
  %24 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  ret %struct.drm_connector_state* %24
}

declare dso_local %struct.tegra_sor_state* @to_sor_state(i32) #1

declare dso_local %struct.tegra_sor_state* @kmemdup(%struct.tegra_sor_state*, i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_connector_duplicate_state(%struct.drm_connector*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
