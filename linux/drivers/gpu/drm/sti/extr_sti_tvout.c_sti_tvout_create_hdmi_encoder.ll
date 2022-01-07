; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_tvout.c_sti_tvout_create_hdmi_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_tvout.c_sti_tvout_create_hdmi_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_device = type { i32 }
%struct.sti_tvout = type { i32 }
%struct.sti_tvout_encoder = type { %struct.drm_encoder, %struct.sti_tvout* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENCODER_CRTC_MASK = common dso_local global i32 0, align 4
@sti_tvout_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@sti_hdmi_encoder_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_encoder* (%struct.drm_device*, %struct.sti_tvout*)* @sti_tvout_create_hdmi_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_encoder* @sti_tvout_create_hdmi_encoder(%struct.drm_device* %0, %struct.sti_tvout* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.sti_tvout*, align 8
  %6 = alloca %struct.sti_tvout_encoder*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.sti_tvout* %1, %struct.sti_tvout** %5, align 8
  %8 = load %struct.sti_tvout*, %struct.sti_tvout** %5, align 8
  %9 = getelementptr inbounds %struct.sti_tvout, %struct.sti_tvout* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sti_tvout_encoder* @devm_kzalloc(i32 %10, i32 16, i32 %11)
  store %struct.sti_tvout_encoder* %12, %struct.sti_tvout_encoder** %6, align 8
  %13 = load %struct.sti_tvout_encoder*, %struct.sti_tvout_encoder** %6, align 8
  %14 = icmp ne %struct.sti_tvout_encoder* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.drm_encoder* null, %struct.drm_encoder** %3, align 8
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.sti_tvout*, %struct.sti_tvout** %5, align 8
  %18 = load %struct.sti_tvout_encoder*, %struct.sti_tvout_encoder** %6, align 8
  %19 = getelementptr inbounds %struct.sti_tvout_encoder, %struct.sti_tvout_encoder* %18, i32 0, i32 1
  store %struct.sti_tvout* %17, %struct.sti_tvout** %19, align 8
  %20 = load %struct.sti_tvout_encoder*, %struct.sti_tvout_encoder** %6, align 8
  %21 = getelementptr inbounds %struct.sti_tvout_encoder, %struct.sti_tvout_encoder* %20, i32 0, i32 0
  store %struct.drm_encoder* %21, %struct.drm_encoder** %7, align 8
  %22 = load i32, i32* @ENCODER_CRTC_MASK, align 4
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %24 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %27 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %28 = call i32 @drm_encoder_init(%struct.drm_device* %25, %struct.drm_encoder* %26, i32* @sti_tvout_encoder_funcs, i32 %27, i32* null)
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %30 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %29, i32* @sti_hdmi_encoder_helper_funcs)
  %31 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  store %struct.drm_encoder* %31, %struct.drm_encoder** %3, align 8
  br label %32

32:                                               ; preds = %16, %15
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  ret %struct.drm_encoder* %33
}

declare dso_local %struct.sti_tvout_encoder* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
