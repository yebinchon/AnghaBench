; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_gem.c_qxl_gem_object_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_gem.c_qxl_gem_object_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qxl_surface = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.qxl_bo = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_gem_object }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to allocate GEM object (%d, %d, %u, %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_gem_object_create(%struct.qxl_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.qxl_surface* %6, %struct.drm_gem_object** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.qxl_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.qxl_surface*, align 8
  %17 = alloca %struct.drm_gem_object**, align 8
  %18 = alloca %struct.qxl_bo*, align 8
  %19 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.qxl_surface* %6, %struct.qxl_surface** %16, align 8
  store %struct.drm_gem_object** %7, %struct.drm_gem_object*** %17, align 8
  %20 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %17, align 8
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %20, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %24, %8
  %27 = load %struct.qxl_device*, %struct.qxl_device** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.qxl_surface*, %struct.qxl_surface** %16, align 8
  %32 = call i32 @qxl_bo_create(%struct.qxl_device* %27, i32 %28, i32 %29, i32 0, i32 %30, %struct.qxl_surface* %31, %struct.qxl_bo** %18)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %26
  %36 = load i32, i32* %19, align 4
  %37 = load i32, i32* @ERESTARTSYS, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %19, align 4
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %35
  %47 = load i32, i32* %19, align 4
  store i32 %47, i32* %9, align 4
  br label %67

48:                                               ; preds = %26
  %49 = load %struct.qxl_bo*, %struct.qxl_bo** %18, align 8
  %50 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %17, align 8
  store %struct.drm_gem_object* %51, %struct.drm_gem_object** %52, align 8
  %53 = load %struct.qxl_device*, %struct.qxl_device** %10, align 8
  %54 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.qxl_bo*, %struct.qxl_bo** %18, align 8
  %58 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %57, i32 0, i32 0
  %59 = load %struct.qxl_device*, %struct.qxl_device** %10, align 8
  %60 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = call i32 @list_add_tail(i32* %58, i32* %61)
  %63 = load %struct.qxl_device*, %struct.qxl_device** %10, align 8
  %64 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %48, %46
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i32 @qxl_bo_create(%struct.qxl_device*, i32, i32, i32, i32, %struct.qxl_surface*, %struct.qxl_bo**) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
