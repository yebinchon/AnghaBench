; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.rk3066_hdmi = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@HDMI_VIDEO_SEL = common dso_local global i32 0, align 4
@GRF_SOC_CON0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"hdmi encoder enable select: vop%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @rk3066_hdmi_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3066_hdmi_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.rk3066_hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = call %struct.rk3066_hdmi* @to_rk3066_hdmi(%struct.drm_encoder* %6)
  store %struct.rk3066_hdmi* %7, %struct.rk3066_hdmi** %3, align 8
  %8 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %9 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %14 = call i32 @drm_of_encoder_active_endpoint_id(i32 %12, %struct.drm_encoder* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @HDMI_VIDEO_SEL, align 4
  %19 = shl i32 %18, 16
  %20 = load i32, i32* @HDMI_VIDEO_SEL, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %5, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @HDMI_VIDEO_SEL, align 4
  %24 = shl i32 %23, 16
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %27 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GRF_SOC_CON0, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @regmap_write(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %33 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %39 = call i32 @DRM_DEV_DEBUG(%struct.TYPE_2__* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %41 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %42 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %41, i32 0, i32 0
  %43 = call i32 @rk3066_hdmi_setup(%struct.rk3066_hdmi* %40, i32* %42)
  ret void
}

declare dso_local %struct.rk3066_hdmi* @to_rk3066_hdmi(%struct.drm_encoder*) #1

declare dso_local i32 @drm_of_encoder_active_endpoint_id(i32, %struct.drm_encoder*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG(%struct.TYPE_2__*, i8*, i8*) #1

declare dso_local i32 @rk3066_hdmi_setup(%struct.rk3066_hdmi*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
