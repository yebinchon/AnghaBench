; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_setup_stereo_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_setup_stereo_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hdmi = type { i32 }
%struct.hdmi_vendor_infoframe = type { i32 }

@HDMI_3D_STRUCTURE_FRAME_PACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to pack vendor infoframe: %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_hdmi*)* @tegra_hdmi_setup_stereo_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_hdmi_setup_stereo_infoframe(%struct.tegra_hdmi* %0) #0 {
  %2 = alloca %struct.tegra_hdmi*, align 8
  %3 = alloca %struct.hdmi_vendor_infoframe, align 4
  %4 = alloca [10 x i32], align 16
  %5 = alloca i64, align 8
  store %struct.tegra_hdmi* %0, %struct.tegra_hdmi** %2, align 8
  %6 = call i32 @hdmi_vendor_infoframe_init(%struct.hdmi_vendor_infoframe* %3)
  %7 = load i32, i32* @HDMI_3D_STRUCTURE_FRAME_PACKING, align 4
  %8 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %10 = call i64 @hdmi_vendor_infoframe_pack(%struct.hdmi_vendor_infoframe* %3, i32* %9, i32 40)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %2, align 8
  %15 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %2, align 8
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @tegra_hdmi_write_infopack(%struct.tegra_hdmi* %20, i32* %21, i64 %22)
  br label %24

24:                                               ; preds = %19, %13
  ret void
}

declare dso_local i32 @hdmi_vendor_infoframe_init(%struct.hdmi_vendor_infoframe*) #1

declare dso_local i64 @hdmi_vendor_infoframe_pack(%struct.hdmi_vendor_infoframe*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @tegra_hdmi_write_infopack(%struct.tegra_hdmi*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
