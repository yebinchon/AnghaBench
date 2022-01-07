; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_panel.c_panel_encoder_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_panel.c_panel_encoder_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_device = type { i32 }
%struct.panel_module = type { i32 }
%struct.panel_encoder = type { %struct.drm_encoder, %struct.panel_module* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@panel_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_LVDS = common dso_local global i32 0, align 4
@panel_encoder_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_encoder* (%struct.drm_device*, %struct.panel_module*)* @panel_encoder_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_encoder* @panel_encoder_create(%struct.drm_device* %0, %struct.panel_module* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.panel_module*, align 8
  %6 = alloca %struct.panel_encoder*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.panel_module* %1, %struct.panel_module** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.panel_encoder* @devm_kzalloc(i32 %11, i32 16, i32 %12)
  store %struct.panel_encoder* %13, %struct.panel_encoder** %6, align 8
  %14 = load %struct.panel_encoder*, %struct.panel_encoder** %6, align 8
  %15 = icmp ne %struct.panel_encoder* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.drm_encoder* null, %struct.drm_encoder** %3, align 8
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.panel_module*, %struct.panel_module** %5, align 8
  %19 = load %struct.panel_encoder*, %struct.panel_encoder** %6, align 8
  %20 = getelementptr inbounds %struct.panel_encoder, %struct.panel_encoder* %19, i32 0, i32 1
  store %struct.panel_module* %18, %struct.panel_module** %20, align 8
  %21 = load %struct.panel_encoder*, %struct.panel_encoder** %6, align 8
  %22 = getelementptr inbounds %struct.panel_encoder, %struct.panel_encoder* %21, i32 0, i32 0
  store %struct.drm_encoder* %22, %struct.drm_encoder** %7, align 8
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %24 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %27 = load i32, i32* @DRM_MODE_ENCODER_LVDS, align 4
  %28 = call i32 @drm_encoder_init(%struct.drm_device* %25, %struct.drm_encoder* %26, i32* @panel_encoder_funcs, i32 %27, i32* null)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %36

32:                                               ; preds = %17
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %34 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %33, i32* @panel_encoder_helper_funcs)
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  store %struct.drm_encoder* %35, %struct.drm_encoder** %3, align 8
  br label %39

36:                                               ; preds = %31
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %38 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %37)
  store %struct.drm_encoder* null, %struct.drm_encoder** %3, align 8
  br label %39

39:                                               ; preds = %36, %32, %16
  %40 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  ret %struct.drm_encoder* %40
}

declare dso_local %struct.panel_encoder* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
