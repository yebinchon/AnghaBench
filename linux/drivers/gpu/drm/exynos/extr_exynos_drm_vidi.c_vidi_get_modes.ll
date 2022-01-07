; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.vidi_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.edid = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"raw_edid is null.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to allocate edid\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @vidi_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidi_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.vidi_context*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.vidi_context* @ctx_from_connector(%struct.drm_connector* %7)
  store %struct.vidi_context* %8, %struct.vidi_context** %4, align 8
  %9 = load %struct.vidi_context*, %struct.vidi_context** %4, align 8
  %10 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.vidi_context*, %struct.vidi_context** %4, align 8
  %15 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @DRM_DEV_DEBUG_KMS(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.vidi_context*, %struct.vidi_context** %4, align 8
  %22 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 1, %25
  %27 = load i32, i32* @EDID_LENGTH, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.vidi_context*, %struct.vidi_context** %4, align 8
  %30 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.edid* @kmemdup(%struct.TYPE_2__* %31, i32 %32, i32 %33)
  store %struct.edid* %34, %struct.edid** %5, align 8
  %35 = load %struct.edid*, %struct.edid** %5, align 8
  %36 = icmp ne %struct.edid* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %20
  %38 = load %struct.vidi_context*, %struct.vidi_context** %4, align 8
  %39 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @DRM_DEV_DEBUG_KMS(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %51

44:                                               ; preds = %20
  %45 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %46 = load %struct.edid*, %struct.edid** %5, align 8
  %47 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %45, %struct.edid* %46)
  %48 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %49 = load %struct.edid*, %struct.edid** %5, align 8
  %50 = call i32 @drm_add_edid_modes(%struct.drm_connector* %48, %struct.edid* %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %44, %37, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.vidi_context* @ctx_from_connector(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*) #1

declare dso_local %struct.edid* @kmemdup(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
