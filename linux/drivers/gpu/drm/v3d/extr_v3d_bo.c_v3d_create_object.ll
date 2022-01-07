; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_bo.c_v3d_create_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_bo.c_v3d_create_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32* }
%struct.drm_device = type { i32 }
%struct.v3d_bo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.drm_gem_object }

@GFP_KERNEL = common dso_local global i32 0, align 4
@v3d_gem_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @v3d_create_object(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.v3d_bo*, align 8
  %7 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %3, align 8
  br label %29

11:                                               ; preds = %2
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.v3d_bo* @kzalloc(i32 16, i32 %12)
  store %struct.v3d_bo* %13, %struct.v3d_bo** %6, align 8
  %14 = load %struct.v3d_bo*, %struct.v3d_bo** %6, align 8
  %15 = icmp ne %struct.v3d_bo* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %3, align 8
  br label %29

17:                                               ; preds = %11
  %18 = load %struct.v3d_bo*, %struct.v3d_bo** %6, align 8
  %19 = getelementptr inbounds %struct.v3d_bo, %struct.v3d_bo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.drm_gem_object* %20, %struct.drm_gem_object** %7, align 8
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %22 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %21, i32 0, i32 0
  store i32* @v3d_gem_funcs, i32** %22, align 8
  %23 = load %struct.v3d_bo*, %struct.v3d_bo** %6, align 8
  %24 = getelementptr inbounds %struct.v3d_bo, %struct.v3d_bo* %23, i32 0, i32 1
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.v3d_bo*, %struct.v3d_bo** %6, align 8
  %27 = getelementptr inbounds %struct.v3d_bo, %struct.v3d_bo* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.drm_gem_object* %28, %struct.drm_gem_object** %3, align 8
  br label %29

29:                                               ; preds = %17, %16, %10
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %30
}

declare dso_local %struct.v3d_bo* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
