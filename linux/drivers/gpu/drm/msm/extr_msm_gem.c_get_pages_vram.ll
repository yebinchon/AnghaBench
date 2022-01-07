; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_get_pages_vram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_get_pages_vram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.drm_gem_object = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.msm_gem_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page** (%struct.drm_gem_object*, i32)* @get_pages_vram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page** @get_pages_vram(%struct.drm_gem_object* %0, i32 %1) #0 {
  %3 = alloca %struct.page**, align 8
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msm_gem_object*, align 8
  %7 = alloca %struct.msm_drm_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %13 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %12)
  store %struct.msm_gem_object* %13, %struct.msm_gem_object** %6, align 8
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %15 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.msm_drm_private*, %struct.msm_drm_private** %17, align 8
  store %struct.msm_drm_private* %18, %struct.msm_drm_private** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.page** @kvmalloc_array(i32 %19, i32 8, i32 %20)
  store %struct.page** %21, %struct.page*** %9, align 8
  %22 = load %struct.page**, %struct.page*** %9, align 8
  %23 = icmp ne %struct.page** %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.page** @ERR_PTR(i32 %26)
  store %struct.page** %27, %struct.page*** %3, align 8
  br label %76

28:                                               ; preds = %2
  %29 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %30 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %34 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %37 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @drm_mm_insert_node(i32* %35, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %42 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %28
  %48 = load %struct.page**, %struct.page*** %9, align 8
  %49 = call i32 @kvfree(%struct.page** %48)
  %50 = load i32, i32* %10, align 4
  %51 = call %struct.page** @ERR_PTR(i32 %50)
  store %struct.page** %51, %struct.page*** %3, align 8
  br label %76

52:                                               ; preds = %28
  %53 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %54 = call i32 @physaddr(%struct.drm_gem_object* %53)
  store i32 %54, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %71, %52
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.page* @phys_to_page(i32 %60)
  %62 = load %struct.page**, %struct.page*** %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.page*, %struct.page** %62, i64 %64
  store %struct.page* %61, %struct.page** %65, align 8
  %66 = load i64, i64* @PAGE_SIZE, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %55

74:                                               ; preds = %55
  %75 = load %struct.page**, %struct.page*** %9, align 8
  store %struct.page** %75, %struct.page*** %3, align 8
  br label %76

76:                                               ; preds = %74, %47, %24
  %77 = load %struct.page**, %struct.page*** %3, align 8
  ret %struct.page** %77
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.page** @kvmalloc_array(i32, i32, i32) #1

declare dso_local %struct.page** @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_mm_insert_node(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvfree(%struct.page**) #1

declare dso_local i32 @physaddr(%struct.drm_gem_object*) #1

declare dso_local %struct.page* @phys_to_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
