; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_stats_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_stats_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dc_stats = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dc_stats*)* @tegra_dc_stats_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dc_stats_reset(%struct.tegra_dc_stats* %0) #0 {
  %2 = alloca %struct.tegra_dc_stats*, align 8
  store %struct.tegra_dc_stats* %0, %struct.tegra_dc_stats** %2, align 8
  %3 = load %struct.tegra_dc_stats*, %struct.tegra_dc_stats** %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dc_stats, %struct.tegra_dc_stats* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = load %struct.tegra_dc_stats*, %struct.tegra_dc_stats** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_dc_stats, %struct.tegra_dc_stats* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.tegra_dc_stats*, %struct.tegra_dc_stats** %2, align 8
  %8 = getelementptr inbounds %struct.tegra_dc_stats, %struct.tegra_dc_stats* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.tegra_dc_stats*, %struct.tegra_dc_stats** %2, align 8
  %10 = getelementptr inbounds %struct.tegra_dc_stats, %struct.tegra_dc_stats* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
