; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_shmem_object = type { i32, i32, i32 }
%struct.drm_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_gem_object* (%struct.drm_device*, i64)* }
%struct.drm_gem_object = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@drm_gem_shmem_funcs = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_shmem_object* @drm_gem_shmem_create(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_gem_shmem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_gem_shmem_object*, align 8
  %7 = alloca %struct.drm_gem_object*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @PAGE_ALIGN(i64 %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.drm_gem_object* (%struct.drm_device*, i64)*, %struct.drm_gem_object* (%struct.drm_device*, i64)** %14, align 8
  %16 = icmp ne %struct.drm_gem_object* (%struct.drm_device*, i64)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.drm_gem_object* (%struct.drm_device*, i64)*, %struct.drm_gem_object* (%struct.drm_device*, i64)** %21, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call %struct.drm_gem_object* %22(%struct.drm_device* %23, i64 %24)
  store %struct.drm_gem_object* %25, %struct.drm_gem_object** %7, align 8
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.drm_gem_object* @kzalloc(i32 12, i32 %27)
  store %struct.drm_gem_object* %28, %struct.drm_gem_object** %7, align 8
  br label %29

29:                                               ; preds = %26, %17
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %31 = icmp ne %struct.drm_gem_object* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.drm_gem_shmem_object* @ERR_PTR(i32 %34)
  store %struct.drm_gem_shmem_object* %35, %struct.drm_gem_shmem_object** %3, align 8
  br label %90

36:                                               ; preds = %29
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %38 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %43 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %42, i32 0, i32 1
  store i32* @drm_gem_shmem_funcs, i32** %43, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %46 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @drm_gem_object_init(%struct.drm_device* %45, %struct.drm_gem_object* %46, i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %85

52:                                               ; preds = %44
  %53 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %54 = call i32 @drm_gem_create_mmap_offset(%struct.drm_gem_object* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %82

58:                                               ; preds = %52
  %59 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %60 = call %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object* %59)
  store %struct.drm_gem_shmem_object* %60, %struct.drm_gem_shmem_object** %6, align 8
  %61 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %6, align 8
  %62 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %61, i32 0, i32 2
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %6, align 8
  %65 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %64, i32 0, i32 1
  %66 = call i32 @mutex_init(i32* %65)
  %67 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %6, align 8
  %68 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %67, i32 0, i32 0
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %71 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @GFP_HIGHUSER, align 4
  %76 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @__GFP_NOWARN, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @mapping_set_gfp_mask(i32 %74, i32 %79)
  %81 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %6, align 8
  store %struct.drm_gem_shmem_object* %81, %struct.drm_gem_shmem_object** %3, align 8
  br label %90

82:                                               ; preds = %57
  %83 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %84 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %83)
  br label %85

85:                                               ; preds = %82, %51
  %86 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %87 = call i32 @kfree(%struct.drm_gem_object* %86)
  %88 = load i32, i32* %8, align 4
  %89 = call %struct.drm_gem_shmem_object* @ERR_PTR(i32 %88)
  store %struct.drm_gem_shmem_object* %89, %struct.drm_gem_shmem_object** %3, align 8
  br label %90

90:                                               ; preds = %85, %58, %32
  %91 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  ret %struct.drm_gem_shmem_object* %91
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.drm_gem_object* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_gem_shmem_object* @ERR_PTR(i32) #1

declare dso_local i32 @drm_gem_object_init(%struct.drm_device*, %struct.drm_gem_object*, i64) #1

declare dso_local i32 @drm_gem_create_mmap_offset(%struct.drm_gem_object*) #1

declare dso_local %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mapping_set_gfp_mask(i32, i32) #1

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #1

declare dso_local i32 @kfree(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
