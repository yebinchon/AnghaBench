; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lvds_connector.c_mdp4_lvds_connector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lvds_connector.c_mdp4_lvds_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, i64, i64 }
%struct.drm_device = type { i32 }
%struct.device_node = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.mdp4_lvds_connector = type { %struct.drm_connector, %struct.device_node*, %struct.drm_encoder* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdp4_lvds_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@mdp4_lvds_connector_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_connector* @mdp4_lvds_connector_init(%struct.drm_device* %0, %struct.device_node* %1, %struct.drm_encoder* %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca %struct.mdp4_lvds_connector*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.drm_encoder* %2, %struct.drm_encoder** %7, align 8
  store %struct.drm_connector* null, %struct.drm_connector** %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mdp4_lvds_connector* @kzalloc(i32 40, i32 %10)
  store %struct.mdp4_lvds_connector* %11, %struct.mdp4_lvds_connector** %9, align 8
  %12 = load %struct.mdp4_lvds_connector*, %struct.mdp4_lvds_connector** %9, align 8
  %13 = icmp ne %struct.mdp4_lvds_connector* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.drm_connector* @ERR_PTR(i32 %16)
  store %struct.drm_connector* %17, %struct.drm_connector** %4, align 8
  br label %43

18:                                               ; preds = %3
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %20 = load %struct.mdp4_lvds_connector*, %struct.mdp4_lvds_connector** %9, align 8
  %21 = getelementptr inbounds %struct.mdp4_lvds_connector, %struct.mdp4_lvds_connector* %20, i32 0, i32 2
  store %struct.drm_encoder* %19, %struct.drm_encoder** %21, align 8
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = load %struct.mdp4_lvds_connector*, %struct.mdp4_lvds_connector** %9, align 8
  %24 = getelementptr inbounds %struct.mdp4_lvds_connector, %struct.mdp4_lvds_connector* %23, i32 0, i32 1
  store %struct.device_node* %22, %struct.device_node** %24, align 8
  %25 = load %struct.mdp4_lvds_connector*, %struct.mdp4_lvds_connector** %9, align 8
  %26 = getelementptr inbounds %struct.mdp4_lvds_connector, %struct.mdp4_lvds_connector* %25, i32 0, i32 0
  store %struct.drm_connector* %26, %struct.drm_connector** %8, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %29 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %30 = call i32 @drm_connector_init(%struct.drm_device* %27, %struct.drm_connector* %28, i32* @mdp4_lvds_connector_funcs, i32 %29)
  %31 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %32 = call i32 @drm_connector_helper_add(%struct.drm_connector* %31, i32* @mdp4_lvds_connector_helper_funcs)
  %33 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %34 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %36 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %38 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %40 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %41 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %39, %struct.drm_encoder* %40)
  %42 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  store %struct.drm_connector* %42, %struct.drm_connector** %4, align 8
  br label %43

43:                                               ; preds = %18, %14
  %44 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  ret %struct.drm_connector* %44
}

declare dso_local %struct.mdp4_lvds_connector* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_connector* @ERR_PTR(i32) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
