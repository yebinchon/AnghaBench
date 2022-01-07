; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_tfp410.c_tfp410_connector_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_tfp410.c_tfp410_connector_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i64, i64 }
%struct.drm_device = type { i32 }
%struct.tfp410_module = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.tfp410_connector = type { %struct.drm_connector, %struct.tfp410_module*, %struct.drm_encoder* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@tfp410_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVID = common dso_local global i32 0, align 4
@tfp410_connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_connector* (%struct.drm_device*, %struct.tfp410_module*, %struct.drm_encoder*)* @tfp410_connector_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_connector* @tfp410_connector_create(%struct.drm_device* %0, %struct.tfp410_module* %1, %struct.drm_encoder* %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.tfp410_module*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca %struct.tfp410_connector*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.tfp410_module* %1, %struct.tfp410_module** %6, align 8
  store %struct.drm_encoder* %2, %struct.drm_encoder** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tfp410_connector* @devm_kzalloc(i32 %13, i32 40, i32 %14)
  store %struct.tfp410_connector* %15, %struct.tfp410_connector** %8, align 8
  %16 = load %struct.tfp410_connector*, %struct.tfp410_connector** %8, align 8
  %17 = icmp ne %struct.tfp410_connector* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.drm_connector* null, %struct.drm_connector** %4, align 8
  br label %54

19:                                               ; preds = %3
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %21 = load %struct.tfp410_connector*, %struct.tfp410_connector** %8, align 8
  %22 = getelementptr inbounds %struct.tfp410_connector, %struct.tfp410_connector* %21, i32 0, i32 2
  store %struct.drm_encoder* %20, %struct.drm_encoder** %22, align 8
  %23 = load %struct.tfp410_module*, %struct.tfp410_module** %6, align 8
  %24 = load %struct.tfp410_connector*, %struct.tfp410_connector** %8, align 8
  %25 = getelementptr inbounds %struct.tfp410_connector, %struct.tfp410_connector* %24, i32 0, i32 1
  store %struct.tfp410_module* %23, %struct.tfp410_module** %25, align 8
  %26 = load %struct.tfp410_connector*, %struct.tfp410_connector** %8, align 8
  %27 = getelementptr inbounds %struct.tfp410_connector, %struct.tfp410_connector* %26, i32 0, i32 0
  store %struct.drm_connector* %27, %struct.drm_connector** %9, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %30 = load i32, i32* @DRM_MODE_CONNECTOR_DVID, align 4
  %31 = call i32 @drm_connector_init(%struct.drm_device* %28, %struct.drm_connector* %29, i32* @tfp410_connector_funcs, i32 %30)
  %32 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %33 = call i32 @drm_connector_helper_add(%struct.drm_connector* %32, i32* @tfp410_connector_helper_funcs)
  %34 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %35 = load i32, i32* @DRM_CONNECTOR_POLL_DISCONNECT, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %38 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %42 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %44 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %45 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %43, %struct.drm_encoder* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %19
  br label %51

49:                                               ; preds = %19
  %50 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  store %struct.drm_connector* %50, %struct.drm_connector** %4, align 8
  br label %54

51:                                               ; preds = %48
  %52 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %53 = call i32 @tfp410_connector_destroy(%struct.drm_connector* %52)
  store %struct.drm_connector* null, %struct.drm_connector** %4, align 8
  br label %54

54:                                               ; preds = %51, %49, %18
  %55 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  ret %struct.drm_connector* %55
}

declare dso_local %struct.tfp410_connector* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @tfp410_connector_destroy(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
