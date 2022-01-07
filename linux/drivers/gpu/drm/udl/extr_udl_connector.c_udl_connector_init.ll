; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_connector.c_udl_connector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_connector.c_udl_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.udl_drm_connector = type { %struct.drm_connector }
%struct.drm_connector = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@udl_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVII = common dso_local global i32 0, align 4
@udl_connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_DISCONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udl_connector_init(%struct.drm_device* %0, %struct.drm_encoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.udl_drm_connector*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.udl_drm_connector* @kzalloc(i32 4, i32 %8)
  store %struct.udl_drm_connector* %9, %struct.udl_drm_connector** %6, align 8
  %10 = load %struct.udl_drm_connector*, %struct.udl_drm_connector** %6, align 8
  %11 = icmp ne %struct.udl_drm_connector* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.udl_drm_connector*, %struct.udl_drm_connector** %6, align 8
  %17 = getelementptr inbounds %struct.udl_drm_connector, %struct.udl_drm_connector* %16, i32 0, i32 0
  store %struct.drm_connector* %17, %struct.drm_connector** %7, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %20 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %21 = call i32 @drm_connector_init(%struct.drm_device* %18, %struct.drm_connector* %19, i32* @udl_connector_funcs, i32 %20)
  %22 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %23 = call i32 @drm_connector_helper_add(%struct.drm_connector* %22, i32* @udl_connector_helper_funcs)
  %24 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %25 = call i32 @drm_connector_register(%struct.drm_connector* %24)
  %26 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %28 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %26, %struct.drm_encoder* %27)
  %29 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %30 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @DRM_CONNECTOR_POLL_DISCONNECT, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %35 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %15, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.udl_drm_connector* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_register(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
