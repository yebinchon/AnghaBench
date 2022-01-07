; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc_cvbs.c_meson_venc_cvbs_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc_cvbs.c_meson_venc_cvbs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.meson_venc_cvbs = type { %struct.drm_connector, %struct.drm_encoder, %struct.meson_drm* }
%struct.drm_connector = type { i32 }
%struct.drm_encoder = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"CVBS Output connector not available\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@meson_cvbs_connector_helper_funcs = common dso_local global i32 0, align 4
@meson_cvbs_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_Composite = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to init CVBS connector\0A\00", align 1
@meson_venc_cvbs_encoder_helper_funcs = common dso_local global i32 0, align 4
@meson_venc_cvbs_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TVDAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"meson_venc_cvbs\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to init CVBS encoder\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @meson_venc_cvbs_create(%struct.meson_drm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson_drm*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.meson_venc_cvbs*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %3, align 8
  %9 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %10 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %9, i32 0, i32 1
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %13 = call i32 @meson_venc_cvbs_connector_is_available(%struct.meson_drm* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_info(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %77

20:                                               ; preds = %1
  %21 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %22 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.meson_venc_cvbs* @devm_kzalloc(i32 %23, i32 16, i32 %24)
  store %struct.meson_venc_cvbs* %25, %struct.meson_venc_cvbs** %5, align 8
  %26 = load %struct.meson_venc_cvbs*, %struct.meson_venc_cvbs** %5, align 8
  %27 = icmp ne %struct.meson_venc_cvbs* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %77

31:                                               ; preds = %20
  %32 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %33 = load %struct.meson_venc_cvbs*, %struct.meson_venc_cvbs** %5, align 8
  %34 = getelementptr inbounds %struct.meson_venc_cvbs, %struct.meson_venc_cvbs* %33, i32 0, i32 2
  store %struct.meson_drm* %32, %struct.meson_drm** %34, align 8
  %35 = load %struct.meson_venc_cvbs*, %struct.meson_venc_cvbs** %5, align 8
  %36 = getelementptr inbounds %struct.meson_venc_cvbs, %struct.meson_venc_cvbs* %35, i32 0, i32 1
  store %struct.drm_encoder* %36, %struct.drm_encoder** %7, align 8
  %37 = load %struct.meson_venc_cvbs*, %struct.meson_venc_cvbs** %5, align 8
  %38 = getelementptr inbounds %struct.meson_venc_cvbs, %struct.meson_venc_cvbs* %37, i32 0, i32 0
  store %struct.drm_connector* %38, %struct.drm_connector** %6, align 8
  %39 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %40 = call i32 @drm_connector_helper_add(%struct.drm_connector* %39, i32* @meson_cvbs_connector_helper_funcs)
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %43 = load i32, i32* @DRM_MODE_CONNECTOR_Composite, align 4
  %44 = call i32 @drm_connector_init(%struct.drm_device* %41, %struct.drm_connector* %42, i32* @meson_cvbs_connector_funcs, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %31
  %48 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %49 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %77

53:                                               ; preds = %31
  %54 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %55 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %57 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %56, i32* @meson_venc_cvbs_encoder_helper_funcs)
  %58 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %59 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %60 = load i32, i32* @DRM_MODE_ENCODER_TVDAC, align 4
  %61 = call i32 @drm_encoder_init(%struct.drm_device* %58, %struct.drm_encoder* %59, i32* @meson_venc_cvbs_encoder_funcs, i32 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %66 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %2, align 4
  br label %77

70:                                               ; preds = %53
  %71 = call i32 @BIT(i32 0)
  %72 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %73 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %75 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %76 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %74, %struct.drm_encoder* %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %70, %64, %47, %28, %15
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @meson_venc_cvbs_connector_is_available(%struct.meson_drm*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local %struct.meson_venc_cvbs* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
