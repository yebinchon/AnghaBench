; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_device = type { i32 }
%struct.vbox_encoder = type { %struct.drm_encoder }

@GFP_KERNEL = common dso_local global i32 0, align 4
@vbox_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_encoder* (%struct.drm_device*, i32)* @vbox_encoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_encoder* @vbox_encoder_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vbox_encoder*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.vbox_encoder* @kzalloc(i32 4, i32 %7)
  store %struct.vbox_encoder* %8, %struct.vbox_encoder** %6, align 8
  %9 = load %struct.vbox_encoder*, %struct.vbox_encoder** %6, align 8
  %10 = icmp ne %struct.vbox_encoder* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.drm_encoder* null, %struct.drm_encoder** %3, align 8
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = load %struct.vbox_encoder*, %struct.vbox_encoder** %6, align 8
  %15 = getelementptr inbounds %struct.vbox_encoder, %struct.vbox_encoder* %14, i32 0, i32 0
  %16 = load i32, i32* @DRM_MODE_ENCODER_DAC, align 4
  %17 = call i32 @drm_encoder_init(%struct.drm_device* %13, %struct.drm_encoder* %15, i32* @vbox_enc_funcs, i32 %16, i32* null)
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = load %struct.vbox_encoder*, %struct.vbox_encoder** %6, align 8
  %21 = getelementptr inbounds %struct.vbox_encoder, %struct.vbox_encoder* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.vbox_encoder*, %struct.vbox_encoder** %6, align 8
  %24 = getelementptr inbounds %struct.vbox_encoder, %struct.vbox_encoder* %23, i32 0, i32 0
  store %struct.drm_encoder* %24, %struct.drm_encoder** %3, align 8
  br label %25

25:                                               ; preds = %12, %11
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  ret %struct.drm_encoder* %26
}

declare dso_local %struct.vbox_encoder* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
