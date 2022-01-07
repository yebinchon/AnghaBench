; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_fill_create_dumb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_fill_create_dumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.ttm_bo_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i64, i64, i64, i32 }
%struct.drm_gem_vram_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_vram_fill_create_dumb(%struct.drm_file* %0, %struct.drm_device* %1, %struct.ttm_bo_device* %2, i64 %3, i32 %4, %struct.drm_mode_create_dumb* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.ttm_bo_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_mode_create_dumb*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.drm_gem_vram_object*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %8, align 8
  store %struct.drm_device* %1, %struct.drm_device** %9, align 8
  store %struct.ttm_bo_device* %2, %struct.ttm_bo_device** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.drm_mode_create_dumb* %5, %struct.drm_mode_create_dumb** %13, align 8
  %19 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %13, align 8
  %20 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %13, align 8
  %23 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 7
  %26 = sdiv i32 %25, 8
  %27 = mul nsw i32 %21, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %14, align 8
  %30 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %13, align 8
  %31 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = mul i64 %29, %32
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = call i64 @roundup(i64 %34, i32 %35)
  store i64 %36, i64* %15, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %6
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %84

42:                                               ; preds = %6
  %43 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %44 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call %struct.drm_gem_vram_object* @drm_gem_vram_create(%struct.drm_device* %43, %struct.ttm_bo_device* %44, i64 %45, i64 %46, i32 %47)
  store %struct.drm_gem_vram_object* %48, %struct.drm_gem_vram_object** %16, align 8
  %49 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %16, align 8
  %50 = call i64 @IS_ERR(%struct.drm_gem_vram_object* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %16, align 8
  %54 = call i32 @PTR_ERR(%struct.drm_gem_vram_object* %53)
  store i32 %54, i32* %7, align 4
  br label %84

55:                                               ; preds = %42
  %56 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %57 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %16, align 8
  %58 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @drm_gem_handle_create(%struct.drm_file* %56, i32* %59, i32* %18)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %78

64:                                               ; preds = %55
  %65 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %16, align 8
  %66 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @drm_gem_object_put_unlocked(i32* %67)
  %69 = load i64, i64* %14, align 8
  %70 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %13, align 8
  %71 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %13, align 8
  %74 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* %18, align 4
  %76 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %13, align 8
  %77 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %7, align 4
  br label %84

78:                                               ; preds = %63
  %79 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %16, align 8
  %80 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @drm_gem_object_put_unlocked(i32* %81)
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %78, %64, %52, %39
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local %struct.drm_gem_vram_object* @drm_gem_vram_create(%struct.drm_device*, %struct.ttm_bo_device*, i64, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
