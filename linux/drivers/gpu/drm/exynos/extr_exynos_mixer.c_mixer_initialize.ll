; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"mixer_resources_init failed ret=%d\0A\00", align 1
@MXR_BIT_VP_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"vp_resources_init failed ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_context*, %struct.drm_device*)* @mixer_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_initialize(%struct.mixer_context* %0, %struct.drm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mixer_context*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.mixer_context* %0, %struct.mixer_context** %4, align 8
  store %struct.drm_device* %1, %struct.drm_device** %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %8 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %9 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %8, i32 0, i32 2
  store %struct.drm_device* %7, %struct.drm_device** %9, align 8
  %10 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %11 = call i32 @mixer_resources_init(%struct.mixer_context* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %16 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @DRM_DEV_ERROR(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %2
  %22 = load i32, i32* @MXR_BIT_VP_ENABLED, align 4
  %23 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %24 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %23, i32 0, i32 1
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %29 = call i32 @vp_resources_init(%struct.mixer_context* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %34 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @DRM_DEV_ERROR(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %46

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %42 = load %struct.mixer_context*, %struct.mixer_context** %4, align 8
  %43 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @exynos_drm_register_dma(%struct.drm_device* %41, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %32, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @mixer_resources_init(%struct.mixer_context*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @vp_resources_init(%struct.mixer_context*) #1

declare dso_local i32 @exynos_drm_register_dma(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
