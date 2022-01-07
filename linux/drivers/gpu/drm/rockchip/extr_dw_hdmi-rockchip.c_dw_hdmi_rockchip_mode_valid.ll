; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw_hdmi-rockchip.c_dw_hdmi_rockchip_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw_hdmi-rockchip.c_dw_hdmi_rockchip_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi_mpll_config = type { i64 }
%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }

@rockchip_mpll_cfg = common dso_local global %struct.dw_hdmi_mpll_config* null, align 8
@MODE_OK = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @dw_hdmi_rockchip_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_rockchip_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.dw_hdmi_mpll_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %9 = load %struct.dw_hdmi_mpll_config*, %struct.dw_hdmi_mpll_config** @rockchip_mpll_cfg, align 8
  store %struct.dw_hdmi_mpll_config* %9, %struct.dw_hdmi_mpll_config** %5, align 8
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %11 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 1000
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %34, %2
  %15 = load %struct.dw_hdmi_mpll_config*, %struct.dw_hdmi_mpll_config** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dw_hdmi_mpll_config, %struct.dw_hdmi_mpll_config* %15, i64 %17
  %19 = getelementptr inbounds %struct.dw_hdmi_mpll_config, %struct.dw_hdmi_mpll_config* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, -1
  br i1 %21, label %22, label %37

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.dw_hdmi_mpll_config*, %struct.dw_hdmi_mpll_config** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dw_hdmi_mpll_config, %struct.dw_hdmi_mpll_config* %25, i64 %27
  %29 = getelementptr inbounds %struct.dw_hdmi_mpll_config, %struct.dw_hdmi_mpll_config* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %24, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %37

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %14

37:                                               ; preds = %32, %14
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @MODE_OK, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @MODE_BAD, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
