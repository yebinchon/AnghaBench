; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_bridge_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_bridge_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.dw_hdmi* }
%struct.dw_hdmi = type { %struct.TYPE_2__*, %struct.drm_connector }
%struct.TYPE_2__ = type { i32 (%struct.drm_connector*, %struct.drm_display_mode*)* }
%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }

@MODE_OK = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*, %struct.drm_display_mode*)* @dw_hdmi_bridge_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_bridge_mode_valid(%struct.drm_bridge* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.dw_hdmi*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %10 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %9, i32 0, i32 0
  %11 = load %struct.dw_hdmi*, %struct.dw_hdmi** %10, align 8
  store %struct.dw_hdmi* %11, %struct.dw_hdmi** %6, align 8
  %12 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %13 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %12, i32 0, i32 1
  store %struct.drm_connector* %13, %struct.drm_connector** %7, align 8
  %14 = load i32, i32* @MODE_OK, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @MODE_BAD, align 4
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %2
  %24 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %25 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.drm_connector*, %struct.drm_display_mode*)*, i32 (%struct.drm_connector*, %struct.drm_display_mode*)** %27, align 8
  %29 = icmp ne i32 (%struct.drm_connector*, %struct.drm_display_mode*)* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %32 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.drm_connector*, %struct.drm_display_mode*)*, i32 (%struct.drm_connector*, %struct.drm_display_mode*)** %34, align 8
  %36 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %38 = call i32 %35(%struct.drm_connector* %36, %struct.drm_display_mode* %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %30, %23
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
