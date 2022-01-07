; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_get_vaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_get_vaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.msm_gem_object = type { i32, i8*, i32, i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid madv state: %u vs %u\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.drm_gem_object*, i32)* @get_vaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_vaddr(%struct.drm_gem_object* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msm_gem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page**, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %10 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %9)
  store %struct.msm_gem_object* %10, %struct.msm_gem_object** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %12 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %15 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ugt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %24 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %29 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @DRM_DEV_ERROR(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %34 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %33, i32 0, i32 2
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i8* @ERR_PTR(i32 %37)
  store i8* %38, i8** %3, align 8
  br label %95

39:                                               ; preds = %2
  %40 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %41 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %45 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %78, label %48

48:                                               ; preds = %39
  %49 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %50 = call %struct.page** @get_pages(%struct.drm_gem_object* %49)
  store %struct.page** %50, %struct.page*** %8, align 8
  %51 = load %struct.page**, %struct.page*** %8, align 8
  %52 = call i64 @IS_ERR(%struct.page** %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.page**, %struct.page*** %8, align 8
  %56 = call i32 @PTR_ERR(%struct.page** %55)
  store i32 %56, i32* %7, align 4
  br label %85

57:                                               ; preds = %48
  %58 = load %struct.page**, %struct.page*** %8, align 8
  %59 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %60 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PAGE_SHIFT, align 4
  %63 = ashr i32 %61, %62
  %64 = load i32, i32* @VM_MAP, align 4
  %65 = load i32, i32* @PAGE_KERNEL, align 4
  %66 = call i32 @pgprot_writecombine(i32 %65)
  %67 = call i8* @vmap(%struct.page** %58, i32 %63, i32 %64, i32 %66)
  %68 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %69 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %71 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %57
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %85

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77, %39
  %79 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %80 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %79, i32 0, i32 2
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %83 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %3, align 8
  br label %95

85:                                               ; preds = %74, %54
  %86 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %87 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %91 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %90, i32 0, i32 2
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %7, align 4
  %94 = call i8* @ERR_PTR(i32 %93)
  store i8* %94, i8** %3, align 8
  br label %95

95:                                               ; preds = %85, %78, %22
  %96 = load i8*, i8** %3, align 8
  ret i8* %96
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local %struct.page** @get_pages(%struct.drm_gem_object*) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

declare dso_local i8* @vmap(%struct.page**, i32, i32, i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
