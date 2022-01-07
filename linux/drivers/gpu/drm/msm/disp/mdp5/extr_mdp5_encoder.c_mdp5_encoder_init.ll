; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_encoder.c_mdp5_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_encoder.c_mdp5_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_device = type { i32 }
%struct.mdp5_interface = type { i64 }
%struct.mdp5_ctl = type { i32 }
%struct.mdp5_encoder = type { i32, %struct.mdp5_interface*, %struct.mdp5_ctl*, %struct.drm_encoder }

@INTF_DSI = common dso_local global i64 0, align 8
@DRM_MODE_ENCODER_DSI = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdp5_encoder_funcs = common dso_local global i32 0, align 4
@mdp5_encoder_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_encoder* @mdp5_encoder_init(%struct.drm_device* %0, %struct.mdp5_interface* %1, %struct.mdp5_ctl* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.mdp5_interface*, align 8
  %7 = alloca %struct.mdp5_ctl*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.mdp5_encoder*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.mdp5_interface* %1, %struct.mdp5_interface** %6, align 8
  store %struct.mdp5_ctl* %2, %struct.mdp5_ctl** %7, align 8
  store %struct.drm_encoder* null, %struct.drm_encoder** %8, align 8
  %12 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %13 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INTF_DSI, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @DRM_MODE_ENCODER_DSI, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.mdp5_encoder* @kzalloc(i32 32, i32 %23)
  store %struct.mdp5_encoder* %24, %struct.mdp5_encoder** %9, align 8
  %25 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %9, align 8
  %26 = icmp ne %struct.mdp5_encoder* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %51

30:                                               ; preds = %21
  %31 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %9, align 8
  %32 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %31, i32 0, i32 3
  store %struct.drm_encoder* %32, %struct.drm_encoder** %8, align 8
  %33 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %7, align 8
  %34 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %9, align 8
  %35 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %34, i32 0, i32 2
  store %struct.mdp5_ctl* %33, %struct.mdp5_ctl** %35, align 8
  %36 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %37 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %9, align 8
  %38 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %37, i32 0, i32 1
  store %struct.mdp5_interface* %36, %struct.mdp5_interface** %38, align 8
  %39 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %9, align 8
  %40 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %39, i32 0, i32 0
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @drm_encoder_init(%struct.drm_device* %42, %struct.drm_encoder* %43, i32* @mdp5_encoder_funcs, i32 %44, i32* null)
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %47 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %46, i32* @mdp5_encoder_helper_funcs)
  %48 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %9, align 8
  %49 = call i32 @bs_init(%struct.mdp5_encoder* %48)
  %50 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  store %struct.drm_encoder* %50, %struct.drm_encoder** %4, align 8
  br label %60

51:                                               ; preds = %27
  %52 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %53 = icmp ne %struct.drm_encoder* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %56 = call i32 @mdp5_encoder_destroy(%struct.drm_encoder* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %11, align 4
  %59 = call %struct.drm_encoder* @ERR_PTR(i32 %58)
  store %struct.drm_encoder* %59, %struct.drm_encoder** %4, align 8
  br label %60

60:                                               ; preds = %57, %30
  %61 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  ret %struct.drm_encoder* %61
}

declare dso_local %struct.mdp5_encoder* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @bs_init(%struct.mdp5_encoder*) #1

declare dso_local i32 @mdp5_encoder_destroy(%struct.drm_encoder*) #1

declare dso_local %struct.drm_encoder* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
