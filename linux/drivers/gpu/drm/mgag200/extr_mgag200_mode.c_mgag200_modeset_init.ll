; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mgag200_modeset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mgag200_modeset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mga_device = type { %struct.TYPE_9__*, %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }

@MGAG200_MAX_FB_WIDTH = common dso_local global i32 0, align 4
@MGAG200_MAX_FB_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"mga_encoder_init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"mga_vga_init failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgag200_modeset_init(%struct.mga_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mga_device*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  store %struct.mga_device* %0, %struct.mga_device** %3, align 8
  %6 = load %struct.mga_device*, %struct.mga_device** %3, align 8
  %7 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @MGAG200_MAX_FB_WIDTH, align 4
  %10 = load %struct.mga_device*, %struct.mga_device** %3, align 8
  %11 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i32 %9, i32* %14, align 4
  %15 = load i32, i32* @MGAG200_MAX_FB_HEIGHT, align 4
  %16 = load %struct.mga_device*, %struct.mga_device** %3, align 8
  %17 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32 %15, i32* %20, align 4
  %21 = load %struct.mga_device*, %struct.mga_device** %3, align 8
  %22 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mga_device*, %struct.mga_device** %3, align 8
  %26 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 4
  %30 = load %struct.mga_device*, %struct.mga_device** %3, align 8
  %31 = call i32 @mga_crtc_init(%struct.mga_device* %30)
  %32 = load %struct.mga_device*, %struct.mga_device** %3, align 8
  %33 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = call %struct.drm_encoder* @mga_encoder_init(%struct.TYPE_9__* %34)
  store %struct.drm_encoder* %35, %struct.drm_encoder** %4, align 8
  %36 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %37 = icmp ne %struct.drm_encoder* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %1
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %53

40:                                               ; preds = %1
  %41 = load %struct.mga_device*, %struct.mga_device** %3, align 8
  %42 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = call %struct.drm_connector* @mga_vga_init(%struct.TYPE_9__* %43)
  store %struct.drm_connector* %44, %struct.drm_connector** %5, align 8
  %45 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %46 = icmp ne %struct.drm_connector* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %53

49:                                               ; preds = %40
  %50 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %51 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %52 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %50, %struct.drm_encoder* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %47, %38
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @mga_crtc_init(%struct.mga_device*) #1

declare dso_local %struct.drm_encoder* @mga_encoder_init(%struct.TYPE_9__*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.drm_connector* @mga_vga_init(%struct.TYPE_9__*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
