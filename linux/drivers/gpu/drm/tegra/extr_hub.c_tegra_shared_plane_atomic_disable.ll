; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_shared_plane_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_shared_plane_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.tegra_plane = type { %struct.tegra_dc* }
%struct.tegra_dc = type { i32 }

@DC_WIN_WIN_OPTIONS = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @tegra_shared_plane_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_shared_plane_atomic_disable(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.tegra_plane*, align 8
  %6 = alloca %struct.tegra_dc*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %9 = call %struct.tegra_plane* @to_tegra_plane(%struct.drm_plane* %8)
  store %struct.tegra_plane* %9, %struct.tegra_plane** %5, align 8
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %11 = icmp ne %struct.drm_plane_state* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  br label %57

18:                                               ; preds = %12
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %20 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.tegra_dc* @to_tegra_dc(i32 %21)
  store %struct.tegra_dc* %22, %struct.tegra_dc** %6, align 8
  %23 = load %struct.tegra_plane*, %struct.tegra_plane** %5, align 8
  %24 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %23, i32 0, i32 0
  %25 = load %struct.tegra_dc*, %struct.tegra_dc** %24, align 8
  %26 = icmp eq %struct.tegra_dc* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %32 = load %struct.tegra_plane*, %struct.tegra_plane** %5, align 8
  %33 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %32, i32 0, i32 0
  store %struct.tegra_dc* %31, %struct.tegra_dc** %33, align 8
  br label %34

34:                                               ; preds = %30, %18
  %35 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %36 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pm_runtime_get_sync(i32 %37)
  %39 = load %struct.tegra_plane*, %struct.tegra_plane** %5, align 8
  %40 = load i32, i32* @DC_WIN_WIN_OPTIONS, align 4
  %41 = call i32 @tegra_plane_readl(%struct.tegra_plane* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @WIN_ENABLE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.tegra_plane*, %struct.tegra_plane** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @DC_WIN_WIN_OPTIONS, align 4
  %49 = call i32 @tegra_plane_writel(%struct.tegra_plane* %46, i32 %47, i32 %48)
  %50 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %51 = load %struct.tegra_plane*, %struct.tegra_plane** %5, align 8
  %52 = call i32 @tegra_dc_remove_shared_plane(%struct.tegra_dc* %50, %struct.tegra_plane* %51)
  %53 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %54 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pm_runtime_put(i32 %55)
  br label %57

57:                                               ; preds = %34, %17
  ret void
}

declare dso_local %struct.tegra_plane* @to_tegra_plane(%struct.drm_plane*) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @tegra_plane_readl(%struct.tegra_plane*, i32) #1

declare dso_local i32 @tegra_plane_writel(%struct.tegra_plane*, i32, i32) #1

declare dso_local i32 @tegra_dc_remove_shared_plane(%struct.tegra_dc*, %struct.tegra_plane*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
