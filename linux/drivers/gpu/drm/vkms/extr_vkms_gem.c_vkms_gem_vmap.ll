; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_gem.c_vkms_gem_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_gem.c_vkms_gem_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.vkms_gem_object = type { i32, i32*, i32, i64 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vkms_gem_vmap(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.vkms_gem_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page**, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %8 = call %struct.vkms_gem_object* @drm_gem_to_vkms_gem(%struct.drm_gem_object* %7)
  store %struct.vkms_gem_object* %8, %struct.vkms_gem_object** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %10 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %13 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %44, label %16

16:                                               ; preds = %1
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %18 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = lshr i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %23 = call %struct.page** @_get_pages(%struct.vkms_gem_object* %22)
  store %struct.page** %23, %struct.page*** %6, align 8
  %24 = load %struct.page**, %struct.page*** %6, align 8
  %25 = call i64 @IS_ERR(%struct.page** %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.page**, %struct.page*** %6, align 8
  %29 = call i32 @PTR_ERR(%struct.page** %28)
  store i32 %29, i32* %4, align 4
  br label %59

30:                                               ; preds = %16
  %31 = load %struct.page**, %struct.page*** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @VM_MAP, align 4
  %34 = load i32, i32* @PAGE_KERNEL, align 4
  %35 = call i64 @vmap(%struct.page** %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %37 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %39 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  br label %49

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %46 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %59

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  %52 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %53 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %54 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @drm_gem_put_pages(%struct.drm_gem_object* %52, i32* %55, i32 0, i32 1)
  %57 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %58 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %49, %44, %27
  %60 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %61 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.vkms_gem_object* @drm_gem_to_vkms_gem(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page** @_get_pages(%struct.vkms_gem_object*) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

declare dso_local i64 @vmap(%struct.page**, i32, i32, i32) #1

declare dso_local i32 @drm_gem_put_pages(%struct.drm_gem_object*, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
