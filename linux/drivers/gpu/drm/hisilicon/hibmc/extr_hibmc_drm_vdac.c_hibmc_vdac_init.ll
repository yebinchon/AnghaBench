; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_vdac.c_hibmc_vdac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_vdac.c_hibmc_vdac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hibmc_drm_private = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to create connector: %ld\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to alloc memory when init encoder\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hibmc_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to init encoder: %d\0A\00", align 1
@hibmc_encoder_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hibmc_vdac_init(%struct.hibmc_drm_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hibmc_drm_private*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca i32, align 4
  store %struct.hibmc_drm_private* %0, %struct.hibmc_drm_private** %3, align 8
  %8 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %9 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %4, align 8
  %11 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %12 = call %struct.drm_connector* @hibmc_connector_init(%struct.hibmc_drm_private* %11)
  store %struct.drm_connector* %12, %struct.drm_connector** %6, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %14 = call i64 @IS_ERR(%struct.drm_connector* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %18 = call i32 @PTR_ERR(%struct.drm_connector* %17)
  %19 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.drm_connector* %20)
  store i32 %21, i32* %2, align 4
  br label %53

22:                                               ; preds = %1
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.drm_encoder* @devm_kzalloc(i32 %25, i32 4, i32 %26)
  store %struct.drm_encoder* %27, %struct.drm_encoder** %5, align 8
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %29 = icmp ne %struct.drm_encoder* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %53

34:                                               ; preds = %22
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %36 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %39 = load i32, i32* @DRM_MODE_ENCODER_DAC, align 4
  %40 = call i32 @drm_encoder_init(%struct.drm_device* %37, %struct.drm_encoder* %38, i32* @hibmc_encoder_funcs, i32 %39, i32* null)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %53

47:                                               ; preds = %34
  %48 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %49 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %48, i32* @hibmc_encoder_helper_funcs)
  %50 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %51 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %52 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %50, %struct.drm_encoder* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %47, %43, %30, %16
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.drm_connector* @hibmc_connector_init(%struct.hibmc_drm_private*) #1

declare dso_local i64 @IS_ERR(%struct.drm_connector*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
