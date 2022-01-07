; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_display_hub_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_display_hub_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_display_hub = type { %struct.tegra_windowgroup*, %struct.TYPE_2__* }
%struct.tegra_windowgroup = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_display_hub_prepare(%struct.tegra_display_hub* %0) #0 {
  %2 = alloca %struct.tegra_display_hub*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_windowgroup*, align 8
  store %struct.tegra_display_hub* %0, %struct.tegra_display_hub** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %2, align 8
  %8 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %6, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %5
  %14 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %2, align 8
  %15 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %14, i32 0, i32 0
  %16 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %16, i64 %18
  store %struct.tegra_windowgroup* %19, %struct.tegra_windowgroup** %4, align 8
  %20 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %4, align 8
  %21 = call i32 @tegra_windowgroup_enable(%struct.tegra_windowgroup* %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

25:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @tegra_windowgroup_enable(%struct.tegra_windowgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
