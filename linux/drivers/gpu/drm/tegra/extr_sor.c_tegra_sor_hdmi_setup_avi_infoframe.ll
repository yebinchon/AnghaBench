; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_hdmi_setup_avi_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_hdmi_setup_avi_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.hdmi_avi_infoframe = type { i32 }

@AVI = common dso_local global i32 0, align 4
@SOR_HDMI_AVI_INFOFRAME_CTRL = common dso_local global i32 0, align 4
@INFOFRAME_CTRL_SINGLE = common dso_local global i32 0, align 4
@INFOFRAME_CTRL_OTHER = common dso_local global i32 0, align 4
@INFOFRAME_CTRL_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to setup AVI infoframe: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to pack AVI infoframe: %d\0A\00", align 1
@INFOFRAME_CTRL_CHECKSUM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sor*, %struct.drm_display_mode*)* @tegra_sor_hdmi_setup_avi_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_hdmi_setup_avi_infoframe(%struct.tegra_sor* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_sor*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hdmi_avi_infoframe, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tegra_sor* %0, %struct.tegra_sor** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %12 = load i32, i32* @AVI, align 4
  %13 = call i32 @HDMI_INFOFRAME_SIZE(i32 %12)
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %18 = load i32, i32* @SOR_HDMI_AVI_INFOFRAME_CTRL, align 4
  %19 = call i32 @tegra_sor_readl(%struct.tegra_sor* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @INFOFRAME_CTRL_SINGLE, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @INFOFRAME_CTRL_OTHER, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @INFOFRAME_CTRL_ENABLE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SOR_HDMI_AVI_INFOFRAME_CTRL, align 4
  %35 = call i32 @tegra_sor_writel(%struct.tegra_sor* %32, i32 %33, i32 %34)
  %36 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %40 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %8, i32* %38, %struct.drm_display_mode* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %2
  %44 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %45 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %80

50:                                               ; preds = %2
  %51 = mul nuw i64 4, %14
  %52 = trunc i64 %51 to i32
  %53 = call i32 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %8, i32* %16, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %58 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %80

63:                                               ; preds = %50
  %64 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @tegra_sor_hdmi_write_infopack(%struct.tegra_sor* %64, i32* %16, i32 %65)
  %67 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %68 = load i32, i32* @SOR_HDMI_AVI_INFOFRAME_CTRL, align 4
  %69 = call i32 @tegra_sor_readl(%struct.tegra_sor* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @INFOFRAME_CTRL_CHECKSUM_ENABLE, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* @INFOFRAME_CTRL_ENABLE, align 4
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SOR_HDMI_AVI_INFOFRAME_CTRL, align 4
  %79 = call i32 @tegra_sor_writel(%struct.tegra_sor* %76, i32 %77, i32 %78)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %80

80:                                               ; preds = %63, %56, %43
  %81 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @HDMI_INFOFRAME_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @tegra_sor_readl(%struct.tegra_sor*, i32) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i32, i32) #1

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe*, i32*, i32) #1

declare dso_local i32 @tegra_sor_hdmi_write_infopack(%struct.tegra_sor*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
