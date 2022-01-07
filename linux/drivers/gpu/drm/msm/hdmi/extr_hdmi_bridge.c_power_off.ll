; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_bridge.c_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_bridge.c_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.hdmi_bridge = type { %struct.hdmi* }
%struct.hdmi = type { %struct.TYPE_2__*, i32*, i32*, %struct.hdmi_platform_config* }
%struct.TYPE_2__ = type { i32 }
%struct.hdmi_platform_config = type { i32, i32, i32* }

@.str = private unnamed_addr constant [42 x i8] c"failed to disable pwr regulator: %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_off(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.hdmi_bridge*, align 8
  %5 = alloca %struct.hdmi*, align 8
  %6 = alloca %struct.hdmi_platform_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %9 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %10 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %13 = call %struct.hdmi_bridge* @to_hdmi_bridge(%struct.drm_bridge* %12)
  store %struct.hdmi_bridge* %13, %struct.hdmi_bridge** %4, align 8
  %14 = load %struct.hdmi_bridge*, %struct.hdmi_bridge** %4, align 8
  %15 = getelementptr inbounds %struct.hdmi_bridge, %struct.hdmi_bridge* %14, i32 0, i32 0
  %16 = load %struct.hdmi*, %struct.hdmi** %15, align 8
  store %struct.hdmi* %16, %struct.hdmi** %5, align 8
  %17 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %18 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %17, i32 0, i32 3
  %19 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %18, align 8
  store %struct.hdmi_platform_config* %19, %struct.hdmi_platform_config** %6, align 8
  %20 = call i32 @mdelay(i32 20)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %36, %1
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %6, align 8
  %24 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %29 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_disable_unprepare(i32 %34)
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %21

39:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %71, %39
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %6, align 8
  %43 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %40
  %47 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %48 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @regulator_disable(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %46
  %58 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %6, align 8
  %62 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @DRM_DEV_ERROR(i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %57, %46
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %40

74:                                               ; preds = %40
  %75 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %76 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @pm_runtime_put_autosuspend(i32* %78)
  ret void
}

declare dso_local %struct.hdmi_bridge* @to_hdmi_bridge(%struct.drm_bridge*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
