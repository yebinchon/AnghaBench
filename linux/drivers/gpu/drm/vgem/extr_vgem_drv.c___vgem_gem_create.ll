; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_drv.c___vgem_gem_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_drv.c___vgem_gem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_vgem_gem_object = type { i32, i32 }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_vgem_gem_object* (%struct.drm_device*, i64)* @__vgem_gem_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_vgem_gem_object* @__vgem_gem_create(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_vgem_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_vgem_gem_object*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.drm_vgem_gem_object* @kzalloc(i32 8, i32 %8)
  store %struct.drm_vgem_gem_object* %9, %struct.drm_vgem_gem_object** %6, align 8
  %10 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %6, align 8
  %11 = icmp ne %struct.drm_vgem_gem_object* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.drm_vgem_gem_object* @ERR_PTR(i32 %14)
  store %struct.drm_vgem_gem_object* %15, %struct.drm_vgem_gem_object** %3, align 8
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %6, align 8
  %19 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %18, i32 0, i32 1
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i32 @roundup(i64 %20, i32 %21)
  %23 = call i32 @drm_gem_object_init(%struct.drm_device* %17, i32* %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %6, align 8
  %28 = call i32 @kfree(%struct.drm_vgem_gem_object* %27)
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.drm_vgem_gem_object* @ERR_PTR(i32 %29)
  store %struct.drm_vgem_gem_object* %30, %struct.drm_vgem_gem_object** %3, align 8
  br label %36

31:                                               ; preds = %16
  %32 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %6, align 8
  %33 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %32, i32 0, i32 0
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %6, align 8
  store %struct.drm_vgem_gem_object* %35, %struct.drm_vgem_gem_object** %3, align 8
  br label %36

36:                                               ; preds = %31, %26, %12
  %37 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  ret %struct.drm_vgem_gem_object* %37
}

declare dso_local %struct.drm_vgem_gem_object* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_vgem_gem_object* @ERR_PTR(i32) #1

declare dso_local i32 @drm_gem_object_init(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i32 @kfree(%struct.drm_vgem_gem_object*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
