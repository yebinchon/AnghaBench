; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_windowgroup_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_windowgroup_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_windowgroup = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_windowgroup*)* @tegra_windowgroup_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_windowgroup_enable(%struct.tegra_windowgroup* %0) #0 {
  %2 = alloca %struct.tegra_windowgroup*, align 8
  store %struct.tegra_windowgroup* %0, %struct.tegra_windowgroup** %2, align 8
  %3 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %2, align 8
  %4 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %2, align 8
  %12 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  %15 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %2, align 8
  %16 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @reset_control_deassert(i32 %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %2, align 8
  %21 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %2, align 8
  %25 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
