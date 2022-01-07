; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.page = type { i32 }
%struct.omap_gem_object = type { i32, %struct.page** }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_gem_get_pages(%struct.drm_gem_object* %0, %struct.page*** %1, i32 %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.page***, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap_gem_object*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.page*** %1, %struct.page**** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %10 = call %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object* %9)
  store %struct.omap_gem_object* %10, %struct.omap_gem_object** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.omap_gem_object*, %struct.omap_gem_object** %7, align 8
  %12 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %18 = call i32 @omap_gem_attach_pages(%struct.drm_gem_object* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %36

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.omap_gem_object*, %struct.omap_gem_object** %7, align 8
  %25 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %24, i32 0, i32 1
  %26 = load %struct.page**, %struct.page*** %25, align 8
  %27 = icmp ne %struct.page** %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %36

31:                                               ; preds = %23
  %32 = load %struct.omap_gem_object*, %struct.omap_gem_object** %7, align 8
  %33 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %32, i32 0, i32 1
  %34 = load %struct.page**, %struct.page*** %33, align 8
  %35 = load %struct.page***, %struct.page**** %5, align 8
  store %struct.page** %34, %struct.page*** %35, align 8
  br label %36

36:                                               ; preds = %31, %28, %21
  %37 = load %struct.omap_gem_object*, %struct.omap_gem_object** %7, align 8
  %38 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @omap_gem_attach_pages(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
