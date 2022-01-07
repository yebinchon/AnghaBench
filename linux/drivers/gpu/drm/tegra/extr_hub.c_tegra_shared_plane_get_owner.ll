; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_shared_plane_get_owner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_shared_plane_get_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_plane = type { i32 }
%struct.tegra_dc = type { i32 }

@DC_WIN_CORE_WINDOWGROUP_SET_CONTROL = common dso_local global i32 0, align 4
@OWNER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_plane*, %struct.tegra_dc*)* @tegra_shared_plane_get_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_shared_plane_get_owner(%struct.tegra_plane* %0, %struct.tegra_dc* %1) #0 {
  %3 = alloca %struct.tegra_plane*, align 8
  %4 = alloca %struct.tegra_dc*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_plane* %0, %struct.tegra_plane** %3, align 8
  store %struct.tegra_dc* %1, %struct.tegra_dc** %4, align 8
  %6 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %7 = load i32, i32* @DC_WIN_CORE_WINDOWGROUP_SET_CONTROL, align 4
  %8 = call i32 @tegra_plane_offset(%struct.tegra_plane* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @tegra_dc_readl(%struct.tegra_dc* %9, i32 %10)
  %12 = load i32, i32* @OWNER_MASK, align 4
  %13 = and i32 %11, %12
  ret i32 %13
}

declare dso_local i32 @tegra_plane_offset(%struct.tegra_plane*, i32) #1

declare dso_local i32 @tegra_dc_readl(%struct.tegra_dc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
