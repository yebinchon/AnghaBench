; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_new_userptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_new_userptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.etnaviv_gem_object = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@ETNA_BO_CACHED = common dso_local global i32 0, align 4
@etnaviv_gem_userptr_ops = common dso_local global i32 0, align 4
@etnaviv_userptr_lock_class = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@ETNA_USERPTR_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_gem_new_userptr(%struct.drm_device* %0, %struct.drm_file* %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_file*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.etnaviv_gem_object*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store %struct.drm_file* %1, %struct.drm_file** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @ETNA_BO_CACHED, align 4
  %19 = call i32 @etnaviv_gem_new_private(%struct.drm_device* %16, i32 %17, i32 %18, i32* @etnaviv_gem_userptr_ops, %struct.etnaviv_gem_object** %14)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %7, align 4
  br label %60

24:                                               ; preds = %6
  %25 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %14, align 8
  %26 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %25, i32 0, i32 2
  %27 = call i32 @lockdep_set_class(i32* %26, i32* @etnaviv_userptr_lock_class)
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %14, align 8
  %30 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %14, align 8
  %36 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @ETNA_USERPTR_WRITE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %14, align 8
  %45 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  %47 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %48 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %14, align 8
  %49 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %48, i32 0, i32 0
  %50 = call i32 @etnaviv_gem_obj_add(%struct.drm_device* %47, i32* %49)
  %51 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %52 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %14, align 8
  %53 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %52, i32 0, i32 0
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @drm_gem_handle_create(%struct.drm_file* %51, i32* %53, i32* %54)
  store i32 %55, i32* %15, align 4
  %56 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %14, align 8
  %57 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %56, i32 0, i32 0
  %58 = call i32 @drm_gem_object_put_unlocked(i32* %57)
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %24, %22
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @etnaviv_gem_new_private(%struct.drm_device*, i32, i32, i32*, %struct.etnaviv_gem_object**) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @etnaviv_gem_obj_add(%struct.drm_device*, i32*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
