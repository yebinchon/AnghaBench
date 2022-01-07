; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_plane_use_vertical_filtering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_plane_use_vertical_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_plane = type { i32, %struct.tegra_dc* }
%struct.tegra_dc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.tegra_dc_window = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_plane*, %struct.tegra_dc_window*)* @tegra_plane_use_vertical_filtering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_plane_use_vertical_filtering(%struct.tegra_plane* %0, %struct.tegra_dc_window* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_plane*, align 8
  %5 = alloca %struct.tegra_dc_window*, align 8
  %6 = alloca %struct.tegra_dc*, align 8
  store %struct.tegra_plane* %0, %struct.tegra_plane** %4, align 8
  store %struct.tegra_dc_window* %1, %struct.tegra_dc_window** %5, align 8
  %7 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %8 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %7, i32 0, i32 1
  %9 = load %struct.tegra_dc*, %struct.tegra_dc** %8, align 8
  store %struct.tegra_dc* %9, %struct.tegra_dc** %6, align 8
  %10 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %5, align 8
  %15 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %27 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %47

33:                                               ; preds = %25, %20
  %34 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %35 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %40 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %47

46:                                               ; preds = %38, %33
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %32, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
