; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_bridge_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_bridge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.sii902x = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@sii902x_connector_helper_funcs = common dso_local global i32 0, align 4
@DRIVER_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"sii902x driver is only compatible with DRM devices supporting atomic updates\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@sii902x_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @sii902x_bridge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii902x_bridge_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.sii902x*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %7 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %8 = call %struct.sii902x* @bridge_to_sii902x(%struct.drm_bridge* %7)
  store %struct.sii902x* %8, %struct.sii902x** %4, align 8
  %9 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %9, i32 0, i32 1
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.sii902x*, %struct.sii902x** %4, align 8
  %13 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %12, i32 0, i32 0
  %14 = call i32 @drm_connector_helper_add(%struct.TYPE_6__* %13, i32* @sii902x_connector_helper_funcs)
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load i32, i32* @DRIVER_ATOMIC, align 4
  %17 = call i32 @drm_core_check_feature(%struct.drm_device* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = load %struct.sii902x*, %struct.sii902x** %4, align 8
  %21 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %61

27:                                               ; preds = %1
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = load %struct.sii902x*, %struct.sii902x** %4, align 8
  %30 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %29, i32 0, i32 0
  %31 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %32 = call i32 @drm_connector_init(%struct.drm_device* %28, %struct.TYPE_6__* %30, i32* @sii902x_connector_funcs, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %61

37:                                               ; preds = %27
  %38 = load %struct.sii902x*, %struct.sii902x** %4, align 8
  %39 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %46 = load %struct.sii902x*, %struct.sii902x** %4, align 8
  %47 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  br label %54

49:                                               ; preds = %37
  %50 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %51 = load %struct.sii902x*, %struct.sii902x** %4, align 8
  %52 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.sii902x*, %struct.sii902x** %4, align 8
  %56 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %55, i32 0, i32 0
  %57 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %58 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @drm_connector_attach_encoder(%struct.TYPE_6__* %56, i32 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %54, %35, %19
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.sii902x* @bridge_to_sii902x(%struct.drm_bridge*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
