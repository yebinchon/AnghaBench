; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_wait_for_video_mode_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_wait_for_video_mode_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcde_dsi = type { i32, i64 }

@DSI_VID_MODE_STS_VSG_RUNNING = common dso_local global i32 0, align 4
@DSI_VID_MODE_STS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"could not get out of video mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcde_dsi*)* @mcde_dsi_wait_for_video_mode_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_dsi_wait_for_video_mode_stop(%struct.mcde_dsi* %0) #0 {
  %2 = alloca %struct.mcde_dsi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mcde_dsi* %0, %struct.mcde_dsi** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @DSI_VID_MODE_STS_VSG_RUNNING, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %8 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DSI_VID_MODE_STS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %6
  %18 = call i32 @usleep_range(i32 1000, i32 2000)
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = icmp eq i32 %19, 100
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %24 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %28

27:                                               ; preds = %17
  br label %6

28:                                               ; preds = %22, %6
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
