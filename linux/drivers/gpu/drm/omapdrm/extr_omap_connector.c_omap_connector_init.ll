; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_connector.c_omap_connector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_connector.c_omap_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, i64 }
%struct.drm_device = type { i32 }
%struct.omap_dss_device = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.omap_connector = type { i8*, %struct.drm_connector, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@omap_connector_funcs = common dso_local global i32 0, align 4
@omap_connector_helper_funcs = common dso_local global i32 0, align 4
@OMAP_DSS_DEVICE_OP_HPD = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@OMAP_DSS_DEVICE_OP_DETECT = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_DISCONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_connector* @omap_connector_init(%struct.drm_device* %0, %struct.omap_dss_device* %1, %struct.drm_encoder* %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca %struct.omap_connector*, align 8
  %10 = alloca %struct.omap_dss_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %6, align 8
  store %struct.drm_encoder* %2, %struct.drm_encoder** %7, align 8
  store %struct.drm_connector* null, %struct.drm_connector** %8, align 8
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %12 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.omap_connector* @kzalloc(i32 32, i32 %15)
  store %struct.omap_connector* %16, %struct.omap_connector** %9, align 8
  %17 = load %struct.omap_connector*, %struct.omap_connector** %9, align 8
  %18 = icmp ne %struct.omap_connector* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %66

20:                                               ; preds = %3
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %22 = call i8* @omapdss_device_get(%struct.omap_dss_device* %21)
  %23 = load %struct.omap_connector*, %struct.omap_connector** %9, align 8
  %24 = getelementptr inbounds %struct.omap_connector, %struct.omap_connector* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.omap_connector*, %struct.omap_connector** %9, align 8
  %26 = getelementptr inbounds %struct.omap_connector, %struct.omap_connector* %25, i32 0, i32 1
  store %struct.drm_connector* %26, %struct.drm_connector** %8, align 8
  %27 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %30 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %33 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %34 = call i32 @omap_connector_get_type(%struct.omap_dss_device* %33)
  %35 = call i32 @drm_connector_init(%struct.drm_device* %31, %struct.drm_connector* %32, i32* @omap_connector_funcs, i32 %34)
  %36 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %37 = call i32 @drm_connector_helper_add(%struct.drm_connector* %36, i32* @omap_connector_helper_funcs)
  %38 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %39 = load i32, i32* @OMAP_DSS_DEVICE_OP_HPD, align 4
  %40 = call %struct.omap_dss_device* @omap_connector_find_device(%struct.drm_connector* %38, i32 %39)
  store %struct.omap_dss_device* %40, %struct.omap_dss_device** %10, align 8
  %41 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %42 = icmp ne %struct.omap_dss_device* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %20
  %44 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %45 = call i8* @omapdss_device_get(%struct.omap_dss_device* %44)
  %46 = load %struct.omap_connector*, %struct.omap_connector** %9, align 8
  %47 = getelementptr inbounds %struct.omap_connector, %struct.omap_connector* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %49 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %50 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %64

51:                                               ; preds = %20
  %52 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %53 = load i32, i32* @OMAP_DSS_DEVICE_OP_DETECT, align 4
  %54 = call %struct.omap_dss_device* @omap_connector_find_device(%struct.drm_connector* %52, i32 %53)
  store %struct.omap_dss_device* %54, %struct.omap_dss_device** %10, align 8
  %55 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %56 = icmp ne %struct.omap_dss_device* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %59 = load i32, i32* @DRM_CONNECTOR_POLL_DISCONNECT, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %62 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63, %43
  %65 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  store %struct.drm_connector* %65, %struct.drm_connector** %4, align 8
  br label %73

66:                                               ; preds = %19
  %67 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %68 = icmp ne %struct.drm_connector* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %71 = call i32 @omap_connector_destroy(%struct.drm_connector* %70)
  br label %72

72:                                               ; preds = %69, %66
  store %struct.drm_connector* null, %struct.drm_connector** %4, align 8
  br label %73

73:                                               ; preds = %72, %64
  %74 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  ret %struct.drm_connector* %74
}

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local %struct.omap_connector* @kzalloc(i32, i32) #1

declare dso_local i8* @omapdss_device_get(%struct.omap_dss_device*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @omap_connector_get_type(%struct.omap_dss_device*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local %struct.omap_dss_device* @omap_connector_find_device(%struct.drm_connector*, i32) #1

declare dso_local i32 @omap_connector_destroy(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
