; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_new_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_new_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%union.omap_gem_size = type { i32 }
%struct.drm_gem_object = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_gem_new_handle(%struct.drm_device* %0, %struct.drm_file* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.omap_gem_size, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.drm_gem_object*, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %union.omap_gem_size, %union.omap_gem_size* %7, i32 0, i32 0
  store i32 %2, i32* %14, align 4
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store %struct.drm_file* %1, %struct.drm_file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %16 = load i32, i32* %10, align 4
  %17 = getelementptr inbounds %union.omap_gem_size, %union.omap_gem_size* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_gem_object* @omap_gem_new(%struct.drm_device* %15, i32 %18, i32 %16)
  store %struct.drm_gem_object* %19, %struct.drm_gem_object** %12, align 8
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %21 = icmp ne %struct.drm_gem_object* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %39

25:                                               ; preds = %5
  %26 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %27 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @drm_gem_handle_create(%struct.drm_file* %26, %struct.drm_gem_object* %27, i32* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %34 = call i32 @omap_gem_free_object(%struct.drm_gem_object* %33)
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %39

36:                                               ; preds = %25
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %38 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %32, %22
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.drm_gem_object* @omap_gem_new(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @omap_gem_free_object(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
