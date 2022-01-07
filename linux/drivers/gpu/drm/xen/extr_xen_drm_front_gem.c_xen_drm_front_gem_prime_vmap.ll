; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_gem.c_xen_drm_front_gem_prime_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_gem.c_xen_drm_front_gem_prime_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.xen_gem_object = type { i32, i32 }

@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xen_drm_front_gem_prime_vmap(%struct.drm_gem_object* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.xen_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %5 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %6 = call %struct.xen_gem_object* @to_xen_gem_obj(%struct.drm_gem_object* %5)
  store %struct.xen_gem_object* %6, %struct.xen_gem_object** %4, align 8
  %7 = load %struct.xen_gem_object*, %struct.xen_gem_object** %4, align 8
  %8 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.xen_gem_object*, %struct.xen_gem_object** %4, align 8
  %14 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xen_gem_object*, %struct.xen_gem_object** %4, align 8
  %17 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VM_MAP, align 4
  %20 = load i32, i32* @PAGE_KERNEL, align 4
  %21 = call i8* @vmap(i32 %15, i32 %18, i32 %19, i32 %20)
  store i8* %21, i8** %2, align 8
  br label %22

22:                                               ; preds = %12, %11
  %23 = load i8*, i8** %2, align 8
  ret i8* %23
}

declare dso_local %struct.xen_gem_object* @to_xen_gem_obj(%struct.drm_gem_object*) #1

declare dso_local i8* @vmap(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
