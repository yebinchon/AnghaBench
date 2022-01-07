; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_modeset.c_udl_modeset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_modeset.c_udl_modeset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i64 }
%struct.drm_encoder = type { i32 }

@udl_mode_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udl_modeset_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_encoder*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = call i32 @drm_mode_config_init(%struct.drm_device* %4)
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 640, i32* %8, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 480, i32* %11, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 2048, i32* %14, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32 2048, i32* %17, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i32 24, i32* %23, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i32* @udl_mode_funcs, i32** %26, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = call i32 @udl_crtc_init(%struct.drm_device* %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %30 = call %struct.drm_encoder* @udl_encoder_init(%struct.drm_device* %29)
  store %struct.drm_encoder* %30, %struct.drm_encoder** %3, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %32 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %33 = call i32 @udl_connector_init(%struct.drm_device* %31, %struct.drm_encoder* %32)
  ret i32 0
}

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @udl_crtc_init(%struct.drm_device*) #1

declare dso_local %struct.drm_encoder* @udl_encoder_init(%struct.drm_device*) #1

declare dso_local i32 @udl_connector_init(%struct.drm_device*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
