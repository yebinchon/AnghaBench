; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arc/extr_arcpgu_hdmi.c_arcpgu_drm_hdmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arc/extr_arcpgu_hdmi.c_arcpgu_drm_hdmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.device_node = type { i32 }
%struct.drm_encoder = type { i32, i64 }
%struct.drm_bridge = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@arcpgu_drm_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arcpgu_drm_hdmi_init(%struct.drm_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_bridge*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.drm_encoder* @devm_kzalloc(i32 %11, i32 16, i32 %12)
  store %struct.drm_encoder* %13, %struct.drm_encoder** %6, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %15 = icmp eq %struct.drm_encoder* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call %struct.drm_bridge* @of_drm_find_bridge(%struct.device_node* %20)
  store %struct.drm_bridge* %21, %struct.drm_bridge** %7, align 8
  %22 = load %struct.drm_bridge*, %struct.drm_bridge** %7, align 8
  %23 = icmp ne %struct.drm_bridge* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EPROBE_DEFER, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %51

27:                                               ; preds = %19
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %29 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %31 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %34 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %35 = call i32 @drm_encoder_init(%struct.drm_device* %32, %struct.drm_encoder* %33, i32* @arcpgu_drm_encoder_funcs, i32 %34, i32* null)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %51

40:                                               ; preds = %27
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %42 = load %struct.drm_bridge*, %struct.drm_bridge** %7, align 8
  %43 = call i32 @drm_bridge_attach(%struct.drm_encoder* %41, %struct.drm_bridge* %42, i32* null)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %48 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %47)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %38, %24, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.drm_encoder* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.drm_bridge* @of_drm_find_bridge(%struct.device_node*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_bridge_attach(%struct.drm_encoder*, %struct.drm_bridge*, i32*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
