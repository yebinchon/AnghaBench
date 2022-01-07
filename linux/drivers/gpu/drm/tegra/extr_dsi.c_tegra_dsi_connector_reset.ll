; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_connector_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_connector_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64 }
%struct.tegra_dsi_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @tegra_dsi_connector_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dsi_connector_reset(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.tegra_dsi_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.tegra_dsi_state* @kzalloc(i32 4, i32 %4)
  store %struct.tegra_dsi_state* %5, %struct.tegra_dsi_state** %3, align 8
  %6 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %3, align 8
  %7 = icmp ne %struct.tegra_dsi_state* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @__drm_atomic_helper_connector_destroy_state(i64 %17)
  %19 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @kfree(i64 %21)
  br label %23

23:                                               ; preds = %14, %9
  %24 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %25 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %25, i32 0, i32 0
  %27 = call i32 @__drm_atomic_helper_connector_reset(%struct.drm_connector* %24, i32* %26)
  br label %28

28:                                               ; preds = %23, %8
  ret void
}

declare dso_local %struct.tegra_dsi_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_connector_destroy_state(i64) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @__drm_atomic_helper_connector_reset(%struct.drm_connector*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
