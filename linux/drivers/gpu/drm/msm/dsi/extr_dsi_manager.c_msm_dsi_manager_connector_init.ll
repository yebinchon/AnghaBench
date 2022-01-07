; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_msm_dsi_manager_connector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_msm_dsi_manager_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_3__*, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 (i32)* }
%struct.msm_dsi = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dsi_connector = type { %struct.drm_connector, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dsi_mgr_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DSI = common dso_local global i32 0, align 4
@dsi_mgr_conn_helper_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"init panel failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_connector* @msm_dsi_manager_connector_init(i32 %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_dsi*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.dsi_connector*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.msm_dsi* @dsi_mgr_get_dsi(i32 %8)
  store %struct.msm_dsi* %9, %struct.msm_dsi** %4, align 8
  store %struct.drm_connector* null, %struct.drm_connector** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dsi_connector* @kzalloc(i32 40, i32 %10)
  store %struct.dsi_connector* %11, %struct.dsi_connector** %6, align 8
  %12 = load %struct.dsi_connector*, %struct.dsi_connector** %6, align 8
  %13 = icmp ne %struct.dsi_connector* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.drm_connector* @ERR_PTR(i32 %16)
  store %struct.drm_connector* %17, %struct.drm_connector** %2, align 8
  br label %77

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.dsi_connector*, %struct.dsi_connector** %6, align 8
  %21 = getelementptr inbounds %struct.dsi_connector, %struct.dsi_connector* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dsi_connector*, %struct.dsi_connector** %6, align 8
  %23 = getelementptr inbounds %struct.dsi_connector, %struct.dsi_connector* %22, i32 0, i32 0
  store %struct.drm_connector* %23, %struct.drm_connector** %5, align 8
  %24 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %25 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %28 = load i32, i32* @DRM_MODE_CONNECTOR_DSI, align 4
  %29 = call i32 @drm_connector_init(%struct.TYPE_4__* %26, %struct.drm_connector* %27, i32* @dsi_mgr_connector_funcs, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.drm_connector* @ERR_PTR(i32 %33)
  store %struct.drm_connector* %34, %struct.drm_connector** %2, align 8
  br label %77

35:                                               ; preds = %18
  %36 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %37 = call i32 @drm_connector_helper_add(%struct.drm_connector* %36, i32* @dsi_mgr_conn_helper_funcs)
  %38 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %39 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %42 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %44 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %46 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %47 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %45, i32 %48)
  %50 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @msm_dsi_manager_panel_init(%struct.drm_connector* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %35
  %56 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %57 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @DRM_DEV_ERROR(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %65

63:                                               ; preds = %35
  %64 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  store %struct.drm_connector* %64, %struct.drm_connector** %2, align 8
  br label %77

65:                                               ; preds = %55
  %66 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %67 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32 (i32)*, i32 (i32)** %69, align 8
  %71 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %72 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %70(i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = call %struct.drm_connector* @ERR_PTR(i32 %75)
  store %struct.drm_connector* %76, %struct.drm_connector** %2, align 8
  br label %77

77:                                               ; preds = %65, %63, %32, %14
  %78 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  ret %struct.drm_connector* %78
}

declare dso_local %struct.msm_dsi* @dsi_mgr_get_dsi(i32) #1

declare dso_local %struct.dsi_connector* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_connector* @ERR_PTR(i32) #1

declare dso_local i32 @drm_connector_init(%struct.TYPE_4__*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, i32) #1

declare dso_local i32 @msm_dsi_manager_panel_init(%struct.drm_connector*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
