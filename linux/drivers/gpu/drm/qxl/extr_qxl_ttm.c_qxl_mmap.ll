; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ttm.c_qxl_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ttm.c_qxl_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.file = type { %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.qxl_device* }
%struct.qxl_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_9__*, i32 }

@.str = private unnamed_addr constant [53 x i8] c"filp->private_data->minor->dev->dev_private == NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"filp->private_data = 0x%p, vma->vm_pgoff = %lx\0A\00", align 1
@ttm_vm_ops = common dso_local global %struct.TYPE_9__* null, align 8
@qxl_ttm_vm_ops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@qxl_ttm_fault = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.qxl_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.drm_file*, %struct.drm_file** %10, align 8
  store %struct.drm_file* %11, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %13 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.qxl_device*, %struct.qxl_device** %17, align 8
  store %struct.qxl_device* %18, %struct.qxl_device** %8, align 8
  %19 = load %struct.qxl_device*, %struct.qxl_device** %8, align 8
  %20 = icmp eq %struct.qxl_device* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %61

25:                                               ; preds = %2
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load %struct.drm_file*, %struct.drm_file** %27, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), %struct.drm_file* %28, i32 %31)
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %35 = load %struct.qxl_device*, %struct.qxl_device** %8, align 8
  %36 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = call i32 @ttm_bo_mmap(%struct.file* %33, %struct.vm_area_struct* %34, i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %25
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %61

46:                                               ; preds = %25
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ttm_vm_ops, align 8
  %48 = icmp eq %struct.TYPE_9__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** @ttm_vm_ops, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ttm_vm_ops, align 8
  %57 = bitcast %struct.TYPE_9__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_9__* @qxl_ttm_vm_ops to i8*), i8* align 8 %57, i64 8, i1 false)
  store i32* @qxl_ttm_fault, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @qxl_ttm_vm_ops, i32 0, i32 0), align 8
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 0
  store %struct.TYPE_9__* @qxl_ttm_vm_ops, %struct.TYPE_9__** %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %44, %21
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, %struct.drm_file*, i32) #1

declare dso_local i32 @ttm_bo_mmap(%struct.file*, %struct.vm_area_struct*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
