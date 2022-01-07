; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw_hdmi-rockchip.c_dw_hdmi_rockchip_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw_hdmi-rockchip.c_dw_hdmi_rockchip_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.rockchip_hdmi = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to enable grfclk %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not write to GRF: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"vop %s output to hdmi\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"LIT\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"BIG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @dw_hdmi_rockchip_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_rockchip_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.rockchip_hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = call %struct.rockchip_hdmi* @to_rockchip_hdmi(%struct.drm_encoder* %6)
  store %struct.rockchip_hdmi* %7, %struct.rockchip_hdmi** %3, align 8
  %8 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %9 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %17 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %22 = call i32 @drm_of_encoder_active_endpoint_id(i32 %20, %struct.drm_encoder* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %27 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %15
  %32 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %33 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %39 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @clk_prepare_enable(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %46 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @DRM_DEV_ERROR(%struct.TYPE_5__* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %82

50:                                               ; preds = %37
  %51 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %52 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %55 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @regmap_write(i32 %53, i64 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %65 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @DRM_DEV_ERROR(%struct.TYPE_5__* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %50
  %70 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %71 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @clk_disable_unprepare(i32 %72)
  %74 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %75 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %81 = call i32 @DRM_DEV_DEBUG(%struct.TYPE_5__* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %69, %44, %14
  ret void
}

declare dso_local %struct.rockchip_hdmi* @to_rockchip_hdmi(%struct.drm_encoder*) #1

declare dso_local i32 @drm_of_encoder_active_endpoint_id(i32, %struct.drm_encoder*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @DRM_DEV_DEBUG(%struct.TYPE_5__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
