; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_gem.c_xen_drm_front_gem_get_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_gem.c_xen_drm_front_gem_get_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.xen_gem_object = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sg_table* @xen_drm_front_gem_get_sg_table(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.sg_table*, align 8
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
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.sg_table* @ERR_PTR(i32 %13)
  store %struct.sg_table* %14, %struct.sg_table** %2, align 8
  br label %23

15:                                               ; preds = %1
  %16 = load %struct.xen_gem_object*, %struct.xen_gem_object** %4, align 8
  %17 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.xen_gem_object*, %struct.xen_gem_object** %4, align 8
  %20 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sg_table* @drm_prime_pages_to_sg(i32 %18, i32 %21)
  store %struct.sg_table* %22, %struct.sg_table** %2, align 8
  br label %23

23:                                               ; preds = %15, %11
  %24 = load %struct.sg_table*, %struct.sg_table** %2, align 8
  ret %struct.sg_table* %24
}

declare dso_local %struct.xen_gem_object* @to_xen_gem_obj(%struct.drm_gem_object*) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local %struct.sg_table* @drm_prime_pages_to_sg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
