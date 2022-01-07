; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_gem.c_xen_drm_front_gem_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_gem.c_xen_drm_front_gem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { i32 }
%struct.xen_gem_object = type { %struct.drm_gem_object }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @xen_drm_front_gem_create(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xen_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call %struct.xen_gem_object* @gem_create(%struct.drm_device* %7, i64 %8)
  store %struct.xen_gem_object* %9, %struct.xen_gem_object** %6, align 8
  %10 = load %struct.xen_gem_object*, %struct.xen_gem_object** %6, align 8
  %11 = call i64 @IS_ERR_OR_NULL(%struct.xen_gem_object* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.xen_gem_object*, %struct.xen_gem_object** %6, align 8
  %15 = call %struct.drm_gem_object* @ERR_CAST(%struct.xen_gem_object* %14)
  store %struct.drm_gem_object* %15, %struct.drm_gem_object** %3, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.xen_gem_object*, %struct.xen_gem_object** %6, align 8
  %18 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %17, i32 0, i32 0
  store %struct.drm_gem_object* %18, %struct.drm_gem_object** %3, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %20
}

declare dso_local %struct.xen_gem_object* @gem_create(%struct.drm_device*, i64) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.xen_gem_object*) #1

declare dso_local %struct.drm_gem_object* @ERR_CAST(%struct.xen_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
