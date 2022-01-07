; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_device = type { i32 }
%struct.device = type { i32 }
%struct.sti_hqvdp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.drm_plane, i32 }

@STI_PLANE_DISABLED = common dso_local global i32 0, align 4
@sti_hqvdp_plane_helpers_funcs = common dso_local global i32 0, align 4
@hqvdp_supported_formats = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to initialize universal plane\0A\00", align 1
@sti_hqvdp_helpers_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane* (%struct.drm_device*, %struct.device*, i32)* @sti_hqvdp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane* @sti_hqvdp_create(%struct.drm_device* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sti_hqvdp*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = call %struct.sti_hqvdp* @dev_get_drvdata(%struct.device* %10)
  store %struct.sti_hqvdp* %11, %struct.sti_hqvdp** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %8, align 8
  %14 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @STI_PLANE_DISABLED, align 4
  %17 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %8, align 8
  %18 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  %20 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %8, align 8
  %21 = call i32 @sti_hqvdp_init(%struct.sti_hqvdp* %20)
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %8, align 8
  %24 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* @hqvdp_supported_formats, align 4
  %27 = load i32, i32* @hqvdp_supported_formats, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  %30 = call i32 @drm_universal_plane_init(%struct.drm_device* %22, %struct.drm_plane* %25, i32 1, i32* @sti_hqvdp_plane_helpers_funcs, i32 %26, i32 %28, i32* null, i32 %29, i32* null)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.drm_plane* null, %struct.drm_plane** %4, align 8
  br label %47

35:                                               ; preds = %3
  %36 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %8, align 8
  %37 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @drm_plane_helper_add(%struct.drm_plane* %38, i32* @sti_hqvdp_helpers_funcs)
  %40 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %8, align 8
  %41 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %40, i32 0, i32 0
  %42 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  %43 = call i32 @sti_plane_init_property(%struct.TYPE_2__* %41, i32 %42)
  %44 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %8, align 8
  %45 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store %struct.drm_plane* %46, %struct.drm_plane** %4, align 8
  br label %47

47:                                               ; preds = %35, %33
  %48 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  ret %struct.drm_plane* %48
}

declare dso_local %struct.sti_hqvdp* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sti_hqvdp_init(%struct.sti_hqvdp*) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

declare dso_local i32 @sti_plane_init_property(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
