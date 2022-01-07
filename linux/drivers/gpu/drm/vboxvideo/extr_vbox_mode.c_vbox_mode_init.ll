; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_mode_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_mode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbox_private = type { i32, %struct.drm_device }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i8* }
%struct.drm_encoder = type { i32 }
%struct.vbox_crtc = type { i32 }

@vbox_mode_funcs = common dso_local global i32 0, align 4
@VBE_DISPI_MAX_XRES = common dso_local global i32 0, align 4
@VBE_DISPI_MAX_YRES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbox_mode_init(%struct.vbox_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vbox_private*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.vbox_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vbox_private* %0, %struct.vbox_private** %3, align 8
  %9 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %10 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %9, i32 0, i32 1
  store %struct.drm_device* %10, %struct.drm_device** %4, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = call i32 @drm_mode_config_init(%struct.drm_device* %11)
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  store i8* bitcast (i32* @vbox_mode_funcs to i8*), i8** %15, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 24, i32* %24, align 8
  %25 = load i32, i32* @VBE_DISPI_MAX_XRES, align 4
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @VBE_DISPI_MAX_YRES, align 4
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %67, %1
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %36 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %33
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.vbox_crtc* @vbox_crtc_init(%struct.drm_device* %40, i32 %41)
  store %struct.vbox_crtc* %42, %struct.vbox_crtc** %6, align 8
  %43 = load %struct.vbox_crtc*, %struct.vbox_crtc** %6, align 8
  %44 = call i64 @IS_ERR(%struct.vbox_crtc* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.vbox_crtc*, %struct.vbox_crtc** %6, align 8
  %48 = call i32 @PTR_ERR(%struct.vbox_crtc* %47)
  store i32 %48, i32* %8, align 4
  br label %73

49:                                               ; preds = %39
  %50 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.drm_encoder* @vbox_encoder_init(%struct.drm_device* %50, i32 %51)
  store %struct.drm_encoder* %52, %struct.drm_encoder** %5, align 8
  %53 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %54 = icmp ne %struct.drm_encoder* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %73

58:                                               ; preds = %49
  %59 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %60 = load %struct.vbox_crtc*, %struct.vbox_crtc** %6, align 8
  %61 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %62 = call i32 @vbox_connector_init(%struct.drm_device* %59, %struct.vbox_crtc* %60, %struct.drm_encoder* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %73

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %33

70:                                               ; preds = %33
  %71 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %72 = call i32 @drm_mode_config_reset(%struct.drm_device* %71)
  store i32 0, i32* %2, align 4
  br label %77

73:                                               ; preds = %65, %55, %46
  %74 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %75 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local %struct.vbox_crtc* @vbox_crtc_init(%struct.drm_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.vbox_crtc*) #1

declare dso_local i32 @PTR_ERR(%struct.vbox_crtc*) #1

declare dso_local %struct.drm_encoder* @vbox_encoder_init(%struct.drm_device*, i32) #1

declare dso_local i32 @vbox_connector_init(%struct.drm_device*, %struct.vbox_crtc*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
