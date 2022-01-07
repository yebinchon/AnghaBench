; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, i64, %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.vc4_bo = type { i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@VM_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"mmaping of shader BOs for writing not allowed.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VC4_MADV_WILLNEED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"mmaping of %s BO not allowed\0A\00", align 1
@VC4_MADV_DONTNEED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"purgeable\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"purged\00", align 1
@VM_PFNMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vc4_bo*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = call i32 @drm_gem_mmap(%struct.file* %10, %struct.vm_area_struct* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %101

17:                                               ; preds = %2
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 4
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %19, align 8
  store %struct.drm_gem_object* %20, %struct.drm_gem_object** %6, align 8
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %22 = call %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object* %21)
  store %struct.vc4_bo* %22, %struct.vc4_bo** %8, align 8
  %23 = load %struct.vc4_bo*, %struct.vc4_bo** %8, align 8
  %24 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VM_WRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %101

38:                                               ; preds = %27, %17
  %39 = load %struct.vc4_bo*, %struct.vc4_bo** %8, align 8
  %40 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VC4_MADV_WILLNEED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.vc4_bo*, %struct.vc4_bo** %8, align 8
  %46 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VC4_MADV_DONTNEED, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %52 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %101

55:                                               ; preds = %38
  %56 = load i32, i32* @VM_PFNMAP, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %7, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.vc4_bo*, %struct.vc4_bo** %8, align 8
  %68 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %75 = load %struct.vc4_bo*, %struct.vc4_bo** %8, align 8
  %76 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vc4_bo*, %struct.vc4_bo** %8, align 8
  %80 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  %90 = call i32 @dma_mmap_wc(i32 %73, %struct.vm_area_struct* %74, i32 %78, i32 %82, i64 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %93 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %55
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %98 = call i32 @drm_gem_vm_close(%struct.vm_area_struct* %97)
  br label %99

99:                                               ; preds = %96, %55
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %44, %34, %15
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @drm_gem_mmap(%struct.file*, %struct.vm_area_struct*) #1

declare dso_local %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @dma_mmap_wc(i32, %struct.vm_area_struct*, i32, i32, i64) #1

declare dso_local i32 @drm_gem_vm_close(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
