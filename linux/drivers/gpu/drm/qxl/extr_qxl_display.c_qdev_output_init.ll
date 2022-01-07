; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qdev_output_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qdev_output_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__, %struct.qxl_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qxl_device = type { i32 }
%struct.qxl_output = type { i32, %struct.drm_encoder, %struct.drm_connector }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qxl_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VIRTUAL = common dso_local global i32 0, align 4
@qxl_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_VIRTUAL = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@qxl_enc_helper_funcs = common dso_local global i32 0, align 4
@qxl_connector_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @qdev_output_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdev_output_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qxl_device*, align 8
  %7 = alloca %struct.qxl_output*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.qxl_device*, %struct.qxl_device** %11, align 8
  store %struct.qxl_device* %12, %struct.qxl_device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.qxl_output* @kzalloc(i32 16, i32 %13)
  store %struct.qxl_output* %14, %struct.qxl_output** %7, align 8
  %15 = load %struct.qxl_output*, %struct.qxl_output** %7, align 8
  %16 = icmp ne %struct.qxl_output* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %74

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.qxl_output*, %struct.qxl_output** %7, align 8
  %23 = getelementptr inbounds %struct.qxl_output, %struct.qxl_output* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.qxl_output*, %struct.qxl_output** %7, align 8
  %25 = getelementptr inbounds %struct.qxl_output, %struct.qxl_output* %24, i32 0, i32 2
  store %struct.drm_connector* %25, %struct.drm_connector** %8, align 8
  %26 = load %struct.qxl_output*, %struct.qxl_output** %7, align 8
  %27 = getelementptr inbounds %struct.qxl_output, %struct.qxl_output* %26, i32 0, i32 1
  store %struct.drm_encoder* %27, %struct.drm_encoder** %9, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = load %struct.qxl_output*, %struct.qxl_output** %7, align 8
  %30 = getelementptr inbounds %struct.qxl_output, %struct.qxl_output* %29, i32 0, i32 2
  %31 = load i32, i32* @DRM_MODE_CONNECTOR_VIRTUAL, align 4
  %32 = call i32 @drm_connector_init(%struct.drm_device* %28, %struct.drm_connector* %30, i32* @qxl_connector_funcs, i32 %31)
  %33 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %34 = load %struct.qxl_output*, %struct.qxl_output** %7, align 8
  %35 = getelementptr inbounds %struct.qxl_output, %struct.qxl_output* %34, i32 0, i32 1
  %36 = load i32, i32* @DRM_MODE_ENCODER_VIRTUAL, align 4
  %37 = call i32 @drm_encoder_init(%struct.drm_device* %33, %struct.drm_encoder* %35, i32* @qxl_enc_funcs, i32 %36, i32* null)
  %38 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %39 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 1, %41
  %43 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %44 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.qxl_output*, %struct.qxl_output** %7, align 8
  %46 = getelementptr inbounds %struct.qxl_output, %struct.qxl_output* %45, i32 0, i32 2
  %47 = load %struct.qxl_output*, %struct.qxl_output** %7, align 8
  %48 = getelementptr inbounds %struct.qxl_output, %struct.qxl_output* %47, i32 0, i32 1
  %49 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %46, %struct.drm_encoder* %48)
  %50 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %51 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %50, i32* @qxl_enc_helper_funcs)
  %52 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %53 = call i32 @drm_connector_helper_add(%struct.drm_connector* %52, i32* @qxl_connector_helper_funcs)
  %54 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %55 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %54, i32 0, i32 0
  %56 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %57 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @drm_object_attach_property(i32* %55, i32 %58, i32 0)
  %60 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %61 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %60, i32 0, i32 0
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @drm_object_attach_property(i32* %61, i32 %65, i32 0)
  %67 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %68 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %67, i32 0, i32 0
  %69 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @drm_object_attach_property(i32* %68, i32 %72, i32 0)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %20, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.qxl_output* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
