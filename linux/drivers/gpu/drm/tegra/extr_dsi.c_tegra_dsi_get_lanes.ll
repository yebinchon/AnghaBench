; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_get_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_get_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dsi = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dsi*)* @tegra_dsi_get_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dsi_get_lanes(%struct.tegra_dsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_dsi*, align 8
  store %struct.tegra_dsi* %0, %struct.tegra_dsi** %3, align 8
  %4 = load %struct.tegra_dsi*, %struct.tegra_dsi** %3, align 8
  %5 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.tegra_dsi*, %struct.tegra_dsi** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tegra_dsi*, %struct.tegra_dsi** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add i32 %13, %16
  store i32 %17, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.tegra_dsi*, %struct.tegra_dsi** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.tegra_dsi*, %struct.tegra_dsi** %3, align 8
  %25 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tegra_dsi*, %struct.tegra_dsi** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %26, %31
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %18
  %34 = load %struct.tegra_dsi*, %struct.tegra_dsi** %3, align 8
  %35 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %23, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
