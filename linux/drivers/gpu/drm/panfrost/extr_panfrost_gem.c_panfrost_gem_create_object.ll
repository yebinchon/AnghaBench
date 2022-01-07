; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gem.c_panfrost_gem_create_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gem.c_panfrost_gem_create_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32* }
%struct.drm_device = type { i32 }
%struct.panfrost_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_gem_object }

@GFP_KERNEL = common dso_local global i32 0, align 4
@panfrost_gem_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @panfrost_gem_create_object(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.panfrost_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.panfrost_gem_object* @kzalloc(i32 8, i32 %7)
  store %struct.panfrost_gem_object* %8, %struct.panfrost_gem_object** %6, align 8
  %9 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %6, align 8
  %10 = icmp ne %struct.panfrost_gem_object* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %3, align 8
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %6, align 8
  %14 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %15, i32 0, i32 0
  store i32* @panfrost_gem_funcs, i32** %16, align 8
  %17 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %6, align 8
  %18 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.drm_gem_object* %19, %struct.drm_gem_object** %3, align 8
  br label %20

20:                                               ; preds = %12, %11
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %21
}

declare dso_local %struct.panfrost_gem_object* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
