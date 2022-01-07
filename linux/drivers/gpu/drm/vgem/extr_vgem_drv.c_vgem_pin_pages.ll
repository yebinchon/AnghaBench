; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_drv.c_vgem_pin_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_drv.c_vgem_pin_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.drm_vgem_gem_object = type { %struct.page**, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page** (%struct.drm_vgem_gem_object*)* @vgem_pin_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page** @vgem_pin_pages(%struct.drm_vgem_gem_object* %0) #0 {
  %2 = alloca %struct.page**, align 8
  %3 = alloca %struct.drm_vgem_gem_object*, align 8
  %4 = alloca %struct.page**, align 8
  store %struct.drm_vgem_gem_object* %0, %struct.drm_vgem_gem_object** %3, align 8
  %5 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  %6 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  %9 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  %15 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %14, i32 0, i32 3
  %16 = call %struct.page** @drm_gem_get_pages(i32* %15)
  store %struct.page** %16, %struct.page*** %4, align 8
  %17 = load %struct.page**, %struct.page*** %4, align 8
  %18 = call i64 @IS_ERR(%struct.page** %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  %22 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  %26 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.page**, %struct.page*** %4, align 8
  store %struct.page** %28, %struct.page*** %2, align 8
  br label %40

29:                                               ; preds = %13
  %30 = load %struct.page**, %struct.page*** %4, align 8
  %31 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  %32 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %31, i32 0, i32 0
  store %struct.page** %30, %struct.page*** %32, align 8
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  %35 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  %38 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %37, i32 0, i32 0
  %39 = load %struct.page**, %struct.page*** %38, align 8
  store %struct.page** %39, %struct.page*** %2, align 8
  br label %40

40:                                               ; preds = %33, %20
  %41 = load %struct.page**, %struct.page*** %2, align 8
  ret %struct.page** %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page** @drm_gem_get_pages(i32*) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
