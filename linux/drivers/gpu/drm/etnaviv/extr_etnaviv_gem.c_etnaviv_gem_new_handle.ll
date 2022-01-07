; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_new_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_new_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_gem_object = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@etnaviv_gem_shmem_ops = common dso_local global i32 0, align 4
@etnaviv_shm_lock_class = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_gem_new_handle(%struct.drm_device* %0, %struct.drm_file* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_file* %1, %struct.drm_file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @PAGE_ALIGN(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @etnaviv_gem_new_impl(%struct.drm_device* %15, i32 %16, i32 %17, i32* @etnaviv_gem_shmem_ops, %struct.drm_gem_object** %11)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %53

22:                                               ; preds = %5
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %24 = call %struct.TYPE_4__* @to_etnaviv_bo(%struct.drm_gem_object* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @lockdep_set_class(i32* %25, i32* @etnaviv_shm_lock_class)
  %27 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @drm_gem_object_init(%struct.drm_device* %27, %struct.drm_gem_object* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %53

34:                                               ; preds = %22
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %36 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GFP_HIGHUSER, align 4
  %41 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @__GFP_NOWARN, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @mapping_set_gfp_mask(i32 %39, i32 %44)
  %46 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %47 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %48 = call i32 @etnaviv_gem_obj_add(%struct.drm_device* %46, %struct.drm_gem_object* %47)
  %49 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %50 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @drm_gem_handle_create(%struct.drm_file* %49, %struct.drm_gem_object* %50, i32* %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %34, %33, %21
  %54 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %55 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %54)
  %56 = load i32, i32* %12, align 4
  ret i32 %56
}

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @etnaviv_gem_new_impl(%struct.drm_device*, i32, i32, i32*, %struct.drm_gem_object**) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @to_etnaviv_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_init(%struct.drm_device*, %struct.drm_gem_object*, i32) #1

declare dso_local i32 @mapping_set_gfp_mask(i32, i32) #1

declare dso_local i32 @etnaviv_gem_obj_add(%struct.drm_device*, %struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
