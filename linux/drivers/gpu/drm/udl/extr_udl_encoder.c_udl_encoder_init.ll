; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_encoder.c_udl_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_encoder.c_udl_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@udl_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@udl_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_encoder* @udl_encoder_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.drm_encoder* @kzalloc(i32 4, i32 %5)
  store %struct.drm_encoder* %6, %struct.drm_encoder** %4, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %8 = icmp ne %struct.drm_encoder* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.drm_encoder* null, %struct.drm_encoder** %2, align 8
  br label %20

10:                                               ; preds = %1
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %13 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %14 = call i32 @drm_encoder_init(%struct.drm_device* %11, %struct.drm_encoder* %12, i32* @udl_enc_funcs, i32 %13, i32* null)
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %16 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %15, i32* @udl_helper_funcs)
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  store %struct.drm_encoder* %19, %struct.drm_encoder** %2, align 8
  br label %20

20:                                               ; preds = %10, %9
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  ret %struct.drm_encoder* %21
}

declare dso_local %struct.drm_encoder* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
