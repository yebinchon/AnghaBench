; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_bridge_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_bridge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.mtk_hdmi = type { i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@mtk_hdmi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to initialize connector: %d\0A\00", align 1
@mtk_hdmi_connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to attach connector to encoder: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to attach external bridge: %d\0A\00", align 1
@mtk_hdmi_hpd_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @mtk_hdmi_bridge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_bridge_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.mtk_hdmi*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %6 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %7 = call %struct.mtk_hdmi* @hdmi_ctx_from_bridge(%struct.drm_bridge* %6)
  store %struct.mtk_hdmi* %7, %struct.mtk_hdmi** %4, align 8
  %8 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %9 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %14 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %13, i32 0, i32 3
  %15 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %16 = call i32 @drm_connector_init(i32 %12, %struct.TYPE_6__* %14, i32* @mtk_hdmi_connector_funcs, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %88

26:                                               ; preds = %1
  %27 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %27, i32 0, i32 3
  %29 = call i32 @drm_connector_helper_add(%struct.TYPE_6__* %28, i32* @mtk_hdmi_connector_helper_funcs)
  %30 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %31 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %35 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %40, i32 0, i32 3
  %42 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %43 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = call i32 @drm_connector_attach_encoder(%struct.TYPE_6__* %41, %struct.TYPE_7__* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %26
  %49 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %50 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %88

55:                                               ; preds = %26
  %56 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %57 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %62 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %65 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %68 = call i32 @drm_bridge_attach(%struct.TYPE_7__* %63, i64 %66, %struct.drm_bridge* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %60
  %72 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %73 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %88

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78, %55
  %80 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %81 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @mtk_hdmi_hpd_event, align 4
  %84 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %85 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @mtk_cec_set_hpd_event(i32 %82, i32 %83, i32 %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %79, %71, %48, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.mtk_hdmi* @hdmi_ctx_from_bridge(%struct.drm_bridge*) #1

declare dso_local i32 @drm_connector_init(i32, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @drm_bridge_attach(%struct.TYPE_7__*, i64, %struct.drm_bridge*) #1

declare dso_local i32 @mtk_cec_set_hpd_event(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
