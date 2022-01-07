; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_hibmc_de_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_hibmc_de_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hibmc_drm_private = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_plane = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to create plane: %ld\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to alloc memory when init crtc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hibmc_crtc_funcs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to init crtc: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to set gamma size: %d\0A\00", align 1
@hibmc_crtc_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hibmc_de_init(%struct.hibmc_drm_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hibmc_drm_private*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca i32, align 4
  store %struct.hibmc_drm_private* %0, %struct.hibmc_drm_private** %3, align 8
  %8 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %9 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %4, align 8
  %11 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %12 = call %struct.drm_plane* @hibmc_plane_init(%struct.hibmc_drm_private* %11)
  store %struct.drm_plane* %12, %struct.drm_plane** %6, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %14 = call i64 @IS_ERR(%struct.drm_plane* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %18 = call i32 @PTR_ERR(%struct.drm_plane* %17)
  %19 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.drm_plane* %20)
  store i32 %21, i32* %2, align 4
  br label %57

22:                                               ; preds = %1
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.drm_crtc* @devm_kzalloc(i32 %25, i32 4, i32 %26)
  store %struct.drm_crtc* %27, %struct.drm_crtc** %5, align 8
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %29 = icmp ne %struct.drm_crtc* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %57

34:                                               ; preds = %22
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %37 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %38 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %35, %struct.drm_crtc* %36, %struct.drm_plane* %37, i32* null, i32* @hibmc_crtc_funcs, i32* null)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %57

45:                                               ; preds = %34
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %47 = call i32 @drm_mode_crtc_set_gamma_size(%struct.drm_crtc* %46, i32 256)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %45
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %56 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %55, i32* @hibmc_crtc_helper_funcs)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %50, %41, %30, %16
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.drm_plane* @hibmc_plane_init(%struct.hibmc_drm_private*) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.drm_plane*) #1

declare dso_local %struct.drm_crtc* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, %struct.drm_plane*, i32*, i32*, i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(%struct.drm_crtc*, i32) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
