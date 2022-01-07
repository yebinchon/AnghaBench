; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_cma_gem_create_object_default_funcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_cma_gem_create_object_default_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32* }
%struct.drm_device = type { i32 }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object }

@GFP_KERNEL = common dso_local global i32 0, align 4
@drm_cma_gem_default_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @drm_cma_gem_create_object_default_funcs(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_gem_cma_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.drm_gem_cma_object* @kzalloc(i32 8, i32 %7)
  store %struct.drm_gem_cma_object* %8, %struct.drm_gem_cma_object** %6, align 8
  %9 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %10 = icmp ne %struct.drm_gem_cma_object* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %3, align 8
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %14 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %14, i32 0, i32 0
  store i32* @drm_cma_gem_default_funcs, i32** %15, align 8
  %16 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %17 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %16, i32 0, i32 0
  store %struct.drm_gem_object* %17, %struct.drm_gem_object** %3, align 8
  br label %18

18:                                               ; preds = %12, %11
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %19
}

declare dso_local %struct.drm_gem_cma_object* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
