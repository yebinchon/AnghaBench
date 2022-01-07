; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_encoder_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_encoder_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmob_drm_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.drm_encoder }
%struct.drm_encoder = type { i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_LVDS = common dso_local global i32 0, align 4
@encoder_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shmob_drm_encoder_create(%struct.shmob_drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.shmob_drm_device*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i32, align 4
  store %struct.shmob_drm_device* %0, %struct.shmob_drm_device** %3, align 8
  %6 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store %struct.drm_encoder* %8, %struct.drm_encoder** %4, align 8
  %9 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %10 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %19 = load i32, i32* @DRM_MODE_ENCODER_LVDS, align 4
  %20 = call i32 @drm_encoder_init(i32 %17, %struct.drm_encoder* %18, i32* @encoder_funcs, i32 %19, i32* null)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %27 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %26, i32* @encoder_helper_funcs)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %23
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @drm_encoder_init(i32, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
