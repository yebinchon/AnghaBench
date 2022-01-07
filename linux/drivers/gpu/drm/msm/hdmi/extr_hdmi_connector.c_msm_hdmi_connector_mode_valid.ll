; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_msm_hdmi_connector_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_msm_hdmi_connector_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_kms* }
%struct.msm_kms = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.msm_kms*, i64, i32)* }
%struct.drm_display_mode = type { i32 }
%struct.hdmi_connector = type { %struct.hdmi* }
%struct.hdmi = type { i32*, i32, %struct.hdmi_platform_config* }
%struct.hdmi_platform_config = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"requested=%ld, actual=%ld\00", align 1
@MODE_CLOCK_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @msm_hdmi_connector_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_hdmi_connector_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.hdmi_connector*, align 8
  %7 = alloca %struct.hdmi*, align 8
  %8 = alloca %struct.hdmi_platform_config*, align 8
  %9 = alloca %struct.msm_drm_private*, align 8
  %10 = alloca %struct.msm_kms*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = call %struct.hdmi_connector* @to_hdmi_connector(%struct.drm_connector* %13)
  store %struct.hdmi_connector* %14, %struct.hdmi_connector** %6, align 8
  %15 = load %struct.hdmi_connector*, %struct.hdmi_connector** %6, align 8
  %16 = getelementptr inbounds %struct.hdmi_connector, %struct.hdmi_connector* %15, i32 0, i32 0
  %17 = load %struct.hdmi*, %struct.hdmi** %16, align 8
  store %struct.hdmi* %17, %struct.hdmi** %7, align 8
  %18 = load %struct.hdmi*, %struct.hdmi** %7, align 8
  %19 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %18, i32 0, i32 2
  %20 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %19, align 8
  store %struct.hdmi_platform_config* %20, %struct.hdmi_platform_config** %8, align 8
  %21 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %22 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.msm_drm_private*, %struct.msm_drm_private** %24, align 8
  store %struct.msm_drm_private* %25, %struct.msm_drm_private** %9, align 8
  %26 = load %struct.msm_drm_private*, %struct.msm_drm_private** %9, align 8
  %27 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %26, i32 0, i32 0
  %28 = load %struct.msm_kms*, %struct.msm_kms** %27, align 8
  store %struct.msm_kms* %28, %struct.msm_kms** %10, align 8
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 1000, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %12, align 8
  %34 = load %struct.msm_kms*, %struct.msm_kms** %10, align 8
  %35 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64 (%struct.msm_kms*, i64, i32)*, i64 (%struct.msm_kms*, i64, i32)** %37, align 8
  %39 = load %struct.msm_kms*, %struct.msm_kms** %10, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.hdmi_connector*, %struct.hdmi_connector** %6, align 8
  %42 = getelementptr inbounds %struct.hdmi_connector, %struct.hdmi_connector* %41, i32 0, i32 0
  %43 = load %struct.hdmi*, %struct.hdmi** %42, align 8
  %44 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 %38(%struct.msm_kms* %39, i64 %40, i32 %45)
  store i64 %46, i64* %11, align 8
  %47 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %8, align 8
  %48 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %2
  %52 = load %struct.hdmi*, %struct.hdmi** %7, align 8
  %53 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %11, align 8
  %58 = call i64 @clk_round_rate(i32 %56, i64 %57)
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %51, %2
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %60, i64 %61)
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @MODE_CLOCK_RANGE, align 4
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %66
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.hdmi_connector* @to_hdmi_connector(%struct.drm_connector*) #1

declare dso_local i64 @clk_round_rate(i32, i64) #1

declare dso_local i32 @DBG(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
