; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_create_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_create_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.vc4_bo = type { i64, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.drm_gem_object }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VC4_MADV_WILLNEED = common dso_local global i32 0, align 4
@VC4_BO_TYPE_KERNEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @vc4_create_object(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vc4_dev*, align 8
  %7 = alloca %struct.vc4_bo*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %8)
  store %struct.vc4_dev* %9, %struct.vc4_dev** %6, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.vc4_bo* @kzalloc(i32 24, i32 %10)
  store %struct.vc4_bo* %11, %struct.vc4_bo** %7, align 8
  %12 = load %struct.vc4_bo*, %struct.vc4_bo** %7, align 8
  %13 = icmp ne %struct.vc4_bo* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.drm_gem_object* @ERR_PTR(i32 %16)
  store %struct.drm_gem_object* %17, %struct.drm_gem_object** %3, align 8
  br label %57

18:                                               ; preds = %2
  %19 = load i32, i32* @VC4_MADV_WILLNEED, align 4
  %20 = load %struct.vc4_bo*, %struct.vc4_bo** %7, align 8
  %21 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.vc4_bo*, %struct.vc4_bo** %7, align 8
  %23 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %22, i32 0, i32 3
  %24 = call i32 @refcount_set(i32* %23, i32 0)
  %25 = load %struct.vc4_bo*, %struct.vc4_bo** %7, align 8
  %26 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %25, i32 0, i32 2
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %29 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i64, i64* @VC4_BO_TYPE_KERNEL, align 8
  %32 = load %struct.vc4_bo*, %struct.vc4_bo** %7, align 8
  %33 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %35 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* @VC4_BO_TYPE_KERNEL, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %44 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i64, i64* @VC4_BO_TYPE_KERNEL, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %42
  store i64 %50, i64* %48, align 8
  %51 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %52 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.vc4_bo*, %struct.vc4_bo** %7, align 8
  %55 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.drm_gem_object* %56, %struct.drm_gem_object** %3, align 8
  br label %57

57:                                               ; preds = %18, %14
  %58 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %58
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_bo* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
