; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_sti_hdmi_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_sti_hdmi_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.sti_hdmi* }
%struct.sti_hdmi = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.sti_hdmi*)* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to prepare/enable hdmi_pix clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to prepare/enable hdmi_tmds clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed to prepare/enable hdmi_rejec_pll clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unable to start hdmi phy\0A\00", align 1
@HDMI_WORKING_INT = common dso_local global i32 0, align 4
@HDMI_INT_EN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Unable to configure AVI infoframe\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Unable to configure audio\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Unable to configure VS infoframe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @sti_hdmi_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_hdmi_pre_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.sti_hdmi*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %4 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %5 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %4, i32 0, i32 0
  %6 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  store %struct.sti_hdmi* %6, %struct.sti_hdmi** %3, align 8
  %7 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %9 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %89

13:                                               ; preds = %1
  %14 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %15 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @clk_prepare_enable(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %23 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @clk_prepare_enable(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %21
  %30 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %31 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @clk_prepare_enable(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %29
  %38 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %39 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %41 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.sti_hdmi*)*, i32 (%struct.sti_hdmi*)** %43, align 8
  %45 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %46 = call i32 %44(%struct.sti_hdmi* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %89

50:                                               ; preds = %37
  %51 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %52 = call i32 @hdmi_active_area(%struct.sti_hdmi* %51)
  %53 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %54 = load i32, i32* @HDMI_WORKING_INT, align 4
  %55 = load i32, i32* @HDMI_INT_EN, align 4
  %56 = call i32 @hdmi_write(%struct.sti_hdmi* %53, i32 %54, i32 %55)
  %57 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %58 = call i32 @hdmi_config(%struct.sti_hdmi* %57)
  %59 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %60 = call i64 @hdmi_avi_infoframe_config(%struct.sti_hdmi* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %50
  %65 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %66 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %72 = call i64 @hdmi_audio_configure(%struct.sti_hdmi* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %70
  br label %80

77:                                               ; preds = %64
  %78 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %79 = call i32 @hdmi_audio_infoframe_config(%struct.sti_hdmi* %78)
  br label %80

80:                                               ; preds = %77, %76
  %81 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %82 = call i64 @hdmi_vendor_infoframe_config(%struct.sti_hdmi* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %80
  %87 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %88 = call i32 @hdmi_swreset(%struct.sti_hdmi* %87)
  br label %89

89:                                               ; preds = %86, %48, %12
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i64 @clk_prepare_enable(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @hdmi_active_area(%struct.sti_hdmi*) #1

declare dso_local i32 @hdmi_write(%struct.sti_hdmi*, i32, i32) #1

declare dso_local i32 @hdmi_config(%struct.sti_hdmi*) #1

declare dso_local i64 @hdmi_avi_infoframe_config(%struct.sti_hdmi*) #1

declare dso_local i64 @hdmi_audio_configure(%struct.sti_hdmi*) #1

declare dso_local i32 @hdmi_audio_infoframe_config(%struct.sti_hdmi*) #1

declare dso_local i64 @hdmi_vendor_infoframe_config(%struct.sti_hdmi*) #1

declare dso_local i32 @hdmi_swreset(%struct.sti_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
