; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_has_window_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_has_window_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.tegra_windowgroup_soc* }
%struct.tegra_windowgroup_soc = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dc*)* @tegra_dc_has_window_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dc_has_window_groups(%struct.tegra_dc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_dc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_windowgroup_soc*, align 8
  store %struct.tegra_dc* %0, %struct.tegra_dc** %3, align 8
  %6 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.tegra_windowgroup_soc*, %struct.tegra_windowgroup_soc** %9, align 8
  %11 = icmp ne %struct.tegra_windowgroup_soc* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %45, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %15, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %14
  %23 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %24 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.tegra_windowgroup_soc*, %struct.tegra_windowgroup_soc** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.tegra_windowgroup_soc, %struct.tegra_windowgroup_soc* %27, i64 %29
  store %struct.tegra_windowgroup_soc* %30, %struct.tegra_windowgroup_soc** %5, align 8
  %31 = load %struct.tegra_windowgroup_soc*, %struct.tegra_windowgroup_soc** %5, align 8
  %32 = getelementptr inbounds %struct.tegra_windowgroup_soc, %struct.tegra_windowgroup_soc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %35 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %22
  %39 = load %struct.tegra_windowgroup_soc*, %struct.tegra_windowgroup_soc** %5, align 8
  %40 = getelementptr inbounds %struct.tegra_windowgroup_soc, %struct.tegra_windowgroup_soc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %49

44:                                               ; preds = %38, %22
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %14

48:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %43, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
