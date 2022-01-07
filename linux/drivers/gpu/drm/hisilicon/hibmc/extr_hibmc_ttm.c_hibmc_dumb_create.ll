; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_ttm.c_hibmc_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_ttm.c_hibmc_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to create GEM object: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to unreference GEM object: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hibmc_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_create_dumb*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %7, align 8
  %11 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %12 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %15 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DIV_ROUND_UP(i32 %16, i32 8)
  %18 = mul nsw i32 %13, %17
  %19 = call i32 @ALIGN(i32 %18, i32 16)
  %20 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %21 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %23 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %26 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %30 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %32 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %33 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @hibmc_gem_create(%struct.drm_device* %31, i32 %34, i32 0, %struct.drm_gem_object** %8)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %58

42:                                               ; preds = %3
  %43 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %45 = call i32 @drm_gem_handle_create(%struct.drm_file* %43, %struct.drm_gem_object* %44, i32* %9)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %47 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %46)
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %58

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %57 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %50, %38
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @hibmc_gem_create(%struct.drm_device*, i32, i32, %struct.drm_gem_object**) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
