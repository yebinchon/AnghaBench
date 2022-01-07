; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_alloc_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_alloc_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_gem_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_RECLAIMABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"alloc obj %p size %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.armada_gem_object* (%struct.drm_device*, i64)* @armada_gem_alloc_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.armada_gem_object* @armada_gem_alloc_object(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.armada_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.armada_gem_object*, align 8
  %7 = alloca %struct.address_space*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @roundup_gem_size(i64 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.armada_gem_object* @kzalloc(i32 8, i32 %10)
  store %struct.armada_gem_object* %11, %struct.armada_gem_object** %6, align 8
  %12 = load %struct.armada_gem_object*, %struct.armada_gem_object** %6, align 8
  %13 = icmp ne %struct.armada_gem_object* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.armada_gem_object* null, %struct.armada_gem_object** %3, align 8
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = load %struct.armada_gem_object*, %struct.armada_gem_object** %6, align 8
  %18 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @drm_gem_object_init(%struct.drm_device* %16, %struct.TYPE_4__* %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.armada_gem_object*, %struct.armada_gem_object** %6, align 8
  %24 = call i32 @kfree(%struct.armada_gem_object* %23)
  store %struct.armada_gem_object* null, %struct.armada_gem_object** %3, align 8
  br label %41

25:                                               ; preds = %15
  %26 = load %struct.armada_gem_object*, %struct.armada_gem_object** %6, align 8
  %27 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.address_space*, %struct.address_space** %30, align 8
  store %struct.address_space* %31, %struct.address_space** %7, align 8
  %32 = load %struct.address_space*, %struct.address_space** %7, align 8
  %33 = load i32, i32* @GFP_HIGHUSER, align 4
  %34 = load i32, i32* @__GFP_RECLAIMABLE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @mapping_set_gfp_mask(%struct.address_space* %32, i32 %35)
  %37 = load %struct.armada_gem_object*, %struct.armada_gem_object** %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.armada_gem_object* %37, i64 %38)
  %40 = load %struct.armada_gem_object*, %struct.armada_gem_object** %6, align 8
  store %struct.armada_gem_object* %40, %struct.armada_gem_object** %3, align 8
  br label %41

41:                                               ; preds = %25, %22, %14
  %42 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  ret %struct.armada_gem_object* %42
}

declare dso_local i64 @roundup_gem_size(i64) #1

declare dso_local %struct.armada_gem_object* @kzalloc(i32, i32) #1

declare dso_local i64 @drm_gem_object_init(%struct.drm_device*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @kfree(%struct.armada_gem_object*) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.address_space*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, %struct.armada_gem_object*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
