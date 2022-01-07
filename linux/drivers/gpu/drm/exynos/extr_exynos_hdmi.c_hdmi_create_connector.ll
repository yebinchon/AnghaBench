; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_create_connector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_create_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.hdmi_context = type { i32, i64, i32, %struct.drm_connector }
%struct.drm_connector = type { i32, i32 }

@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@hdmi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to initialize connector with drm\0A\00", align 1
@hdmi_connector_helper_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to attach bridge\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*)* @hdmi_create_connector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_create_connector(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.hdmi_context*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %8 = call %struct.hdmi_context* @encoder_to_hdmi(%struct.drm_encoder* %7)
  store %struct.hdmi_context* %8, %struct.hdmi_context** %4, align 8
  %9 = load %struct.hdmi_context*, %struct.hdmi_context** %4, align 8
  %10 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %9, i32 0, i32 3
  store %struct.drm_connector* %10, %struct.drm_connector** %5, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.hdmi_context*, %struct.hdmi_context** %4, align 8
  %17 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %20 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %21 = call i32 @drm_connector_init(i32 %18, %struct.drm_connector* %19, i32* @hdmi_connector_funcs, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.hdmi_context*, %struct.hdmi_context** %4, align 8
  %26 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @DRM_DEV_ERROR(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %56

30:                                               ; preds = %1
  %31 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %32 = call i32 @drm_connector_helper_add(%struct.drm_connector* %31, i32* @hdmi_connector_helper_funcs)
  %33 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %35 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %33, %struct.drm_encoder* %34)
  %36 = load %struct.hdmi_context*, %struct.hdmi_context** %4, align 8
  %37 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %30
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %42 = load %struct.hdmi_context*, %struct.hdmi_context** %4, align 8
  %43 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @drm_bridge_attach(%struct.drm_encoder* %41, i64 %44, i32* null)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.hdmi_context*, %struct.hdmi_context** %4, align 8
  %50 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @DRM_DEV_ERROR(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %40
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %24
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.hdmi_context* @encoder_to_hdmi(%struct.drm_encoder*) #1

declare dso_local i32 @drm_connector_init(i32, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_bridge_attach(%struct.drm_encoder*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
