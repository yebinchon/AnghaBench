; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_hibmc_plane_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_hibmc_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.hibmc_drm_private = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to alloc memory when init plane\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hibmc_plane_funcs = common dso_local global i32 0, align 4
@channel_formats1 = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to init plane: %d\0A\00", align 1
@hibmc_plane_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane* (%struct.hibmc_drm_private*)* @hibmc_plane_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane* @hibmc_plane_init(%struct.hibmc_drm_private* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.hibmc_drm_private*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca i32, align 4
  store %struct.hibmc_drm_private* %0, %struct.hibmc_drm_private** %3, align 8
  %7 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %8 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.drm_plane* @devm_kzalloc(i32 %12, i32 4, i32 %13)
  store %struct.drm_plane* %14, %struct.drm_plane** %5, align 8
  %15 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %16 = icmp ne %struct.drm_plane* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.drm_plane* @ERR_PTR(i32 %20)
  store %struct.drm_plane* %21, %struct.drm_plane** %2, align 8
  br label %41

22:                                               ; preds = %1
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %25 = load i32, i32* @channel_formats1, align 4
  %26 = load i32, i32* @channel_formats1, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %29 = call i32 @drm_universal_plane_init(%struct.drm_device* %23, %struct.drm_plane* %24, i32 1, i32* @hibmc_plane_funcs, i32 %25, i32 %27, i32* null, i32 %28, i32* null)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.drm_plane* @ERR_PTR(i32 %35)
  store %struct.drm_plane* %36, %struct.drm_plane** %2, align 8
  br label %41

37:                                               ; preds = %22
  %38 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %39 = call i32 @drm_plane_helper_add(%struct.drm_plane* %38, i32* @hibmc_plane_helper_funcs)
  %40 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  store %struct.drm_plane* %40, %struct.drm_plane** %2, align 8
  br label %41

41:                                               ; preds = %37, %32, %17
  %42 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  ret %struct.drm_plane* %42
}

declare dso_local %struct.drm_plane* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.drm_plane* @ERR_PTR(i32) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
