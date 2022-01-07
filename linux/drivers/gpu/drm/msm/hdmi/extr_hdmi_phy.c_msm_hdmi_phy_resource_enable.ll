; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy.c_msm_hdmi_phy_resource_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy.c_msm_hdmi_phy_resource_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_phy = type { i32*, i32*, %struct.TYPE_2__*, %struct.hdmi_phy_cfg* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hdmi_phy_cfg = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [37 x i8] c"failed to enable regulator: %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to enable clock: %s (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_hdmi_phy_resource_enable(%struct.hdmi_phy* %0) #0 {
  %2 = alloca %struct.hdmi_phy*, align 8
  %3 = alloca %struct.hdmi_phy_cfg*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdmi_phy* %0, %struct.hdmi_phy** %2, align 8
  %7 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %8 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %7, i32 0, i32 3
  %9 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %8, align 8
  store %struct.hdmi_phy_cfg* %9, %struct.hdmi_phy_cfg** %3, align 8
  %10 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %11 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @pm_runtime_get_sync(%struct.device* %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %45, %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %3, align 8
  %19 = getelementptr inbounds %struct.hdmi_phy_cfg, %struct.hdmi_phy_cfg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %24 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regulator_enable(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %3, align 8
  %36 = getelementptr inbounds %struct.hdmi_phy_cfg, %struct.hdmi_phy_cfg* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @DRM_DEV_ERROR(%struct.device* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %33, %22
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %16

48:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %78, %48
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %3, align 8
  %52 = getelementptr inbounds %struct.hdmi_phy_cfg, %struct.hdmi_phy_cfg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %57 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clk_prepare_enable(i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %55
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %3, align 8
  %69 = getelementptr inbounds %struct.hdmi_phy_cfg, %struct.hdmi_phy_cfg* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @DRM_DEV_ERROR(%struct.device* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %66, %55
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %49

81:                                               ; preds = %49
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
