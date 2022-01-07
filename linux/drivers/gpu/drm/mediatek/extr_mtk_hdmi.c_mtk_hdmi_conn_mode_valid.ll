; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_conn_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_conn_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32 }
%struct.mtk_hdmi = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [48 x i8] c"xres=%d, yres=%d, refresh=%d, intl=%d clock=%d\0A\00", align 1
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @mtk_hdmi_conn_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_conn_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.mtk_hdmi*, align 8
  %7 = alloca %struct.drm_display_mode, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = call %struct.mtk_hdmi* @hdmi_ctx_from_conn(%struct.drm_connector* %8)
  store %struct.mtk_hdmi* %9, %struct.mtk_hdmi** %6, align 8
  %10 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %6, align 8
  %11 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 1000
  %35 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %30, i32 %34)
  %36 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %6, align 8
  %37 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %2
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %43 = call i32 @drm_mode_copy(%struct.drm_display_mode* %7, %struct.drm_display_mode* %42)
  %44 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %6, align 8
  %45 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %49 = call i32 @drm_bridge_mode_fixup(i64 %47, %struct.drm_display_mode* %48, %struct.drm_display_mode* %7)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* @MODE_BAD, align 4
  store i32 %52, i32* %3, align 4
  br label %71

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %2
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 27000
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %60, i32* %3, align 4
  br label %71

61:                                               ; preds = %54
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 297000
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %67, i32* %3, align 4
  br label %71

68:                                               ; preds = %61
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %70 = call i32 @drm_mode_validate_size(%struct.drm_display_mode* %69, i32 8191, i32 8191)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %66, %59, %51
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.mtk_hdmi* @hdmi_ctx_from_conn(%struct.drm_connector*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_mode_copy(%struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_bridge_mode_fixup(i64, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_validate_size(%struct.drm_display_mode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
