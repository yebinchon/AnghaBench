; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_dc_owns_shared_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_dc_owns_shared_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dc = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.tegra_plane = type { i32, %struct.tegra_dc* }

@.str = private unnamed_addr constant [44 x i8] c"head %u owns window %u but is not attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dc*, %struct.tegra_plane*)* @tegra_dc_owns_shared_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dc_owns_shared_plane(%struct.tegra_dc* %0, %struct.tegra_plane* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_dc*, align 8
  %5 = alloca %struct.tegra_plane*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.tegra_dc* %0, %struct.tegra_dc** %4, align 8
  store %struct.tegra_plane* %1, %struct.tegra_plane** %5, align 8
  %7 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %8 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %7, i32 0, i32 1
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.tegra_plane*, %struct.tegra_plane** %5, align 8
  %11 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %12 = call i32 @tegra_shared_plane_get_owner(%struct.tegra_plane* %10, %struct.tegra_dc* %11)
  %13 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.tegra_plane*, %struct.tegra_plane** %5, align 8
  %19 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %18, i32 0, i32 1
  %20 = load %struct.tegra_dc*, %struct.tegra_dc** %19, align 8
  %21 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %22 = icmp eq %struct.tegra_dc* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %34

24:                                               ; preds = %17
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.tegra_plane*, %struct.tegra_plane** %5, align 8
  %30 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_WARN(%struct.device* %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %24, %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @tegra_shared_plane_get_owner(%struct.tegra_plane*, %struct.tegra_dc*) #1

declare dso_local i32 @dev_WARN(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
