; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_dsi_encoder.c_mdp4_dsi_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_dsi_encoder.c_mdp4_dsi_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_device = type { i32 }
%struct.mdp4_dsi_encoder = type { %struct.drm_encoder }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdp4_dsi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DSI = common dso_local global i32 0, align 4
@mdp4_dsi_encoder_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_encoder* @mdp4_dsi_encoder_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.mdp4_dsi_encoder*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_encoder* null, %struct.drm_encoder** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mdp4_dsi_encoder* @kzalloc(i32 4, i32 %7)
  store %struct.mdp4_dsi_encoder* %8, %struct.mdp4_dsi_encoder** %5, align 8
  %9 = load %struct.mdp4_dsi_encoder*, %struct.mdp4_dsi_encoder** %5, align 8
  %10 = icmp ne %struct.mdp4_dsi_encoder* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.mdp4_dsi_encoder*, %struct.mdp4_dsi_encoder** %5, align 8
  %16 = getelementptr inbounds %struct.mdp4_dsi_encoder, %struct.mdp4_dsi_encoder* %15, i32 0, i32 0
  store %struct.drm_encoder* %16, %struct.drm_encoder** %4, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %19 = load i32, i32* @DRM_MODE_ENCODER_DSI, align 4
  %20 = call i32 @drm_encoder_init(%struct.drm_device* %17, %struct.drm_encoder* %18, i32* @mdp4_dsi_encoder_funcs, i32 %19, i32* null)
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %22 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %21, i32* @mdp4_dsi_encoder_helper_funcs)
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  store %struct.drm_encoder* %23, %struct.drm_encoder** %2, align 8
  br label %33

24:                                               ; preds = %11
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %26 = icmp ne %struct.drm_encoder* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %29 = call i32 @mdp4_dsi_encoder_destroy(%struct.drm_encoder* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.drm_encoder* @ERR_PTR(i32 %31)
  store %struct.drm_encoder* %32, %struct.drm_encoder** %2, align 8
  br label %33

33:                                               ; preds = %30, %14
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  ret %struct.drm_encoder* %34
}

declare dso_local %struct.mdp4_dsi_encoder* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @mdp4_dsi_encoder_destroy(%struct.drm_encoder*) #1

declare dso_local %struct.drm_encoder* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
