; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_device = type { i32 }
%struct.mga_encoder = type { %struct.drm_encoder }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mga_encoder_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DAC = common dso_local global i32 0, align 4
@mga_encoder_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_encoder* (%struct.drm_device*)* @mga_encoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_encoder* @mga_encoder_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.mga_encoder*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mga_encoder* @kzalloc(i32 4, i32 %6)
  store %struct.mga_encoder* %7, %struct.mga_encoder** %5, align 8
  %8 = load %struct.mga_encoder*, %struct.mga_encoder** %5, align 8
  %9 = icmp ne %struct.mga_encoder* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.drm_encoder* null, %struct.drm_encoder** %2, align 8
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.mga_encoder*, %struct.mga_encoder** %5, align 8
  %13 = getelementptr inbounds %struct.mga_encoder, %struct.mga_encoder* %12, i32 0, i32 0
  store %struct.drm_encoder* %13, %struct.drm_encoder** %4, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %18 = load i32, i32* @DRM_MODE_ENCODER_DAC, align 4
  %19 = call i32 @drm_encoder_init(%struct.drm_device* %16, %struct.drm_encoder* %17, i32* @mga_encoder_encoder_funcs, i32 %18, i32* null)
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %21 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %20, i32* @mga_encoder_helper_funcs)
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  store %struct.drm_encoder* %22, %struct.drm_encoder** %2, align 8
  br label %23

23:                                               ; preds = %11, %10
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  ret %struct.drm_encoder* %24
}

declare dso_local %struct.mga_encoder* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
