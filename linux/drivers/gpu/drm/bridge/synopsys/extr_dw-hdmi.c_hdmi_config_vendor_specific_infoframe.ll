; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_config_vendor_specific_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_config_vendor_specific_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32, i32 }
%struct.drm_display_mode = type { i32 }
%struct.hdmi_vendor_infoframe = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to pack vendor infoframe: %zd\0A\00", align 1
@HDMI_FC_DATAUTO0 = common dso_local global i32 0, align 4
@HDMI_FC_DATAUTO0_VSD_OFFSET = common dso_local global i32 0, align 4
@HDMI_FC_DATAUTO0_VSD_MASK = common dso_local global i32 0, align 4
@HDMI_FC_VSDSIZE = common dso_local global i32 0, align 4
@HDMI_FC_VSDIEEEID0 = common dso_local global i32 0, align 4
@HDMI_FC_VSDIEEEID1 = common dso_local global i32 0, align 4
@HDMI_FC_VSDIEEEID2 = common dso_local global i32 0, align 4
@HDMI_FC_VSDPAYLOAD0 = common dso_local global i32 0, align 4
@HDMI_FC_VSDPAYLOAD1 = common dso_local global i32 0, align 4
@HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF = common dso_local global i64 0, align 8
@HDMI_FC_VSDPAYLOAD2 = common dso_local global i32 0, align 4
@HDMI_FC_DATAUTO1 = common dso_local global i32 0, align 4
@HDMI_FC_DATAUTO2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*, %struct.drm_display_mode*)* @hdmi_config_vendor_specific_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_config_vendor_specific_infoframe(%struct.dw_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.hdmi_vendor_infoframe, align 8
  %6 = alloca [10 x i32], align 16
  %7 = alloca i64, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %8 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %9 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %8, i32 0, i32 1
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %11 = call i64 @drm_hdmi_vendor_infoframe_from_display_mode(%struct.hdmi_vendor_infoframe* %5, i32* %9, %struct.drm_display_mode* %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %84

15:                                               ; preds = %2
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %17 = call i64 @hdmi_vendor_infoframe_pack(%struct.hdmi_vendor_infoframe* %5, i32* %16, i32 40)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %22 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %84

26:                                               ; preds = %15
  %27 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %28 = load i32, i32* @HDMI_FC_DATAUTO0, align 4
  %29 = load i32, i32* @HDMI_FC_DATAUTO0_VSD_OFFSET, align 4
  %30 = load i32, i32* @HDMI_FC_DATAUTO0_VSD_MASK, align 4
  %31 = call i32 @hdmi_mask_writeb(%struct.dw_hdmi* %27, i32 0, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @HDMI_FC_VSDSIZE, align 4
  %36 = call i32 @hdmi_writeb(%struct.dw_hdmi* %32, i32 %34, i32 %35)
  %37 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %38 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 4
  %39 = load i32, i32* %38, align 16
  %40 = load i32, i32* @HDMI_FC_VSDIEEEID0, align 4
  %41 = call i32 @hdmi_writeb(%struct.dw_hdmi* %37, i32 %39, i32 %40)
  %42 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 5
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @HDMI_FC_VSDIEEEID1, align 4
  %46 = call i32 @hdmi_writeb(%struct.dw_hdmi* %42, i32 %44, i32 %45)
  %47 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 6
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @HDMI_FC_VSDIEEEID2, align 4
  %51 = call i32 @hdmi_writeb(%struct.dw_hdmi* %47, i32 %49, i32 %50)
  %52 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %53 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 7
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HDMI_FC_VSDPAYLOAD0, align 4
  %56 = call i32 @hdmi_writeb(%struct.dw_hdmi* %52, i32 %54, i32 %55)
  %57 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %58 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 8
  %59 = load i32, i32* %58, align 16
  %60 = load i32, i32* @HDMI_FC_VSDPAYLOAD1, align 4
  %61 = call i32 @hdmi_writeb(%struct.dw_hdmi* %57, i32 %59, i32 %60)
  %62 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %5, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %26
  %67 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 9
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HDMI_FC_VSDPAYLOAD2, align 4
  %71 = call i32 @hdmi_writeb(%struct.dw_hdmi* %67, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %26
  %73 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %74 = load i32, i32* @HDMI_FC_DATAUTO1, align 4
  %75 = call i32 @hdmi_writeb(%struct.dw_hdmi* %73, i32 1, i32 %74)
  %76 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %77 = load i32, i32* @HDMI_FC_DATAUTO2, align 4
  %78 = call i32 @hdmi_writeb(%struct.dw_hdmi* %76, i32 17, i32 %77)
  %79 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %80 = load i32, i32* @HDMI_FC_DATAUTO0, align 4
  %81 = load i32, i32* @HDMI_FC_DATAUTO0_VSD_OFFSET, align 4
  %82 = load i32, i32* @HDMI_FC_DATAUTO0_VSD_MASK, align 4
  %83 = call i32 @hdmi_mask_writeb(%struct.dw_hdmi* %79, i32 1, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %72, %20, %14
  ret void
}

declare dso_local i64 @drm_hdmi_vendor_infoframe_from_display_mode(%struct.hdmi_vendor_infoframe*, i32*, %struct.drm_display_mode*) #1

declare dso_local i64 @hdmi_vendor_infoframe_pack(%struct.hdmi_vendor_infoframe*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @hdmi_mask_writeb(%struct.dw_hdmi*, i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
