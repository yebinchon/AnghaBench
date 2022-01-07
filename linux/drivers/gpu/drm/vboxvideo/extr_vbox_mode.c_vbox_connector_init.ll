; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_connector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vbox_crtc = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.vbox_connector = type { %struct.vbox_crtc*, %struct.drm_connector }
%struct.drm_connector = type { i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vbox_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4
@vbox_connector_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.vbox_crtc*, %struct.drm_encoder*)* @vbox_connector_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbox_connector_init(%struct.drm_device* %0, %struct.vbox_crtc* %1, %struct.drm_encoder* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vbox_crtc*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca %struct.vbox_connector*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.vbox_crtc* %1, %struct.vbox_crtc** %6, align 8
  store %struct.drm_encoder* %2, %struct.drm_encoder** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.vbox_connector* @kzalloc(i32 32, i32 %10)
  store %struct.vbox_connector* %11, %struct.vbox_connector** %8, align 8
  %12 = load %struct.vbox_connector*, %struct.vbox_connector** %8, align 8
  %13 = icmp ne %struct.vbox_connector* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.vbox_connector*, %struct.vbox_connector** %8, align 8
  %19 = getelementptr inbounds %struct.vbox_connector, %struct.vbox_connector* %18, i32 0, i32 1
  store %struct.drm_connector* %19, %struct.drm_connector** %9, align 8
  %20 = load %struct.vbox_crtc*, %struct.vbox_crtc** %6, align 8
  %21 = load %struct.vbox_connector*, %struct.vbox_connector** %8, align 8
  %22 = getelementptr inbounds %struct.vbox_connector, %struct.vbox_connector* %21, i32 0, i32 0
  store %struct.vbox_crtc* %20, %struct.vbox_crtc** %22, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %25 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %26 = call i32 @drm_connector_init(%struct.drm_device* %23, %struct.drm_connector* %24, i32* @vbox_connector_funcs, i32 %25)
  %27 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %28 = call i32 @drm_connector_helper_add(%struct.drm_connector* %27, i32* @vbox_connector_helper_funcs)
  %29 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %30 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %32 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %34 = call i32 @drm_mode_create_suggested_offset_properties(%struct.drm_device* %33)
  %35 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %36 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %35, i32 0, i32 0
  %37 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @drm_object_attach_property(i32* %36, i32 %40, i32 0)
  %42 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %43 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %42, i32 0, i32 0
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @drm_object_attach_property(i32* %43, i32 %47, i32 0)
  %49 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %50 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %51 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %49, %struct.drm_encoder* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %17, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.vbox_connector* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_mode_create_suggested_offset_properties(%struct.drm_device*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
