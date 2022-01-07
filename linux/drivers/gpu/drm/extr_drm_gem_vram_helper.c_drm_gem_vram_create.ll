; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_vram_object = type { i32 }
%struct.drm_device = type { i32 }
%struct.ttm_bo_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_vram_object* @drm_gem_vram_create(%struct.drm_device* %0, %struct.ttm_bo_device* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_gem_vram_object*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.ttm_bo_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_gem_vram_object*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.ttm_bo_device* %1, %struct.ttm_bo_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.drm_gem_vram_object* @kzalloc(i32 4, i32 %14)
  store %struct.drm_gem_vram_object* %15, %struct.drm_gem_vram_object** %12, align 8
  %16 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %12, align 8
  %17 = icmp ne %struct.drm_gem_vram_object* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.drm_gem_vram_object* @ERR_PTR(i32 %20)
  store %struct.drm_gem_vram_object* %21, %struct.drm_gem_vram_object** %6, align 8
  br label %40

22:                                               ; preds = %5
  %23 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %24 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %25 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %12, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @drm_gem_vram_init(%struct.drm_device* %23, %struct.ttm_bo_device* %24, %struct.drm_gem_vram_object* %25, i64 %26, i64 %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %35

33:                                               ; preds = %22
  %34 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %12, align 8
  store %struct.drm_gem_vram_object* %34, %struct.drm_gem_vram_object** %6, align 8
  br label %40

35:                                               ; preds = %32
  %36 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %12, align 8
  %37 = call i32 @kfree(%struct.drm_gem_vram_object* %36)
  %38 = load i32, i32* %13, align 4
  %39 = call %struct.drm_gem_vram_object* @ERR_PTR(i32 %38)
  store %struct.drm_gem_vram_object* %39, %struct.drm_gem_vram_object** %6, align 8
  br label %40

40:                                               ; preds = %35, %33, %18
  %41 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %6, align 8
  ret %struct.drm_gem_vram_object* %41
}

declare dso_local %struct.drm_gem_vram_object* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_gem_vram_object* @ERR_PTR(i32) #1

declare dso_local i32 @drm_gem_vram_init(%struct.drm_device*, %struct.ttm_bo_device*, %struct.drm_gem_vram_object*, i64, i64, i32) #1

declare dso_local i32 @kfree(%struct.drm_gem_vram_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
