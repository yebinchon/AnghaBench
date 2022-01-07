; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_tmd_vid.c_tmd_vid_get_panel_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_tmd_vid.c_tmd_vid_get_panel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.panel_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TMD_PANEL_WIDTH = common dso_local global i32 0, align 4
@TMD_PANEL_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %struct.panel_info*)* @tmd_vid_get_panel_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmd_vid_get_panel_info(%struct.drm_device* %0, i32 %1, %struct.panel_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.panel_info*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.panel_info* %2, %struct.panel_info** %7, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %9 = icmp ne %struct.drm_device* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %12 = icmp ne %struct.panel_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %23

16:                                               ; preds = %10
  %17 = load i32, i32* @TMD_PANEL_WIDTH, align 4
  %18 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %19 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @TMD_PANEL_HEIGHT, align 4
  %21 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %22 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %16, %13
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
