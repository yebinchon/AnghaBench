; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_setup_avi_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_setup_avi_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hdmi = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.hdmi_avi_infoframe = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"failed to setup AVI infoframe: %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to pack AVI infoframe: %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_hdmi*, %struct.drm_display_mode*)* @tegra_hdmi_setup_avi_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_hdmi_setup_avi_infoframe(%struct.tegra_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.tegra_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.hdmi_avi_infoframe, align 4
  %6 = alloca [17 x i32], align 16
  %7 = alloca i64, align 8
  store %struct.tegra_hdmi* %0, %struct.tegra_hdmi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %8 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %12 = call i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %5, i32* %10, %struct.drm_display_mode* %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %37

21:                                               ; preds = %2
  %22 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 0
  %23 = call i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %5, i32* %22, i32 68)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  br label %37

32:                                               ; preds = %21
  %33 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %34 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @tegra_hdmi_write_infopack(%struct.tegra_hdmi* %33, i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %32, %26, %15
  ret void
}

declare dso_local i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe*, i32*, i32) #1

declare dso_local i32 @tegra_hdmi_write_infopack(%struct.tegra_hdmi*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
