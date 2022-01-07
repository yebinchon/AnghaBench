; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_gem.c_mtk_drm_gem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_gem.c_mtk_drm_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_drm_gem_obj = type { i32 }
%struct.drm_device = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to initialize gem object\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_drm_gem_obj* (%struct.drm_device*, i64)* @mtk_drm_gem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_drm_gem_obj* @mtk_drm_gem_init(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.mtk_drm_gem_obj*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mtk_drm_gem_obj*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = call i64 @round_up(i64 %8, i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mtk_drm_gem_obj* @kzalloc(i32 4, i32 %11)
  store %struct.mtk_drm_gem_obj* %12, %struct.mtk_drm_gem_obj** %6, align 8
  %13 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %6, align 8
  %14 = icmp ne %struct.mtk_drm_gem_obj* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.mtk_drm_gem_obj* @ERR_PTR(i32 %17)
  store %struct.mtk_drm_gem_obj* %18, %struct.mtk_drm_gem_obj** %3, align 8
  br label %35

19:                                               ; preds = %2
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %6, align 8
  %22 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @drm_gem_object_init(%struct.drm_device* %20, i32* %22, i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %6, align 8
  %30 = call i32 @kfree(%struct.mtk_drm_gem_obj* %29)
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.mtk_drm_gem_obj* @ERR_PTR(i32 %31)
  store %struct.mtk_drm_gem_obj* %32, %struct.mtk_drm_gem_obj** %3, align 8
  br label %35

33:                                               ; preds = %19
  %34 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %6, align 8
  store %struct.mtk_drm_gem_obj* %34, %struct.mtk_drm_gem_obj** %3, align 8
  br label %35

35:                                               ; preds = %33, %27, %15
  %36 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %3, align 8
  ret %struct.mtk_drm_gem_obj* %36
}

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local %struct.mtk_drm_gem_obj* @kzalloc(i32, i32) #1

declare dso_local %struct.mtk_drm_gem_obj* @ERR_PTR(i32) #1

declare dso_local i32 @drm_gem_object_init(%struct.drm_device*, i32*, i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @kfree(%struct.mtk_drm_gem_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
