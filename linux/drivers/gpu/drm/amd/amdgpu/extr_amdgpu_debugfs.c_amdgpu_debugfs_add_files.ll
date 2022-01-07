; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_debugfs.c_amdgpu_debugfs_add_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_debugfs.c_amdgpu_debugfs_add_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.drm_info_list* }
%struct.drm_info_list = type { i32 }

@AMDGPU_DEBUGFS_MAX_COMPONENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Reached maximum number of debugfs components.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Report so we increase AMDGPU_DEBUGFS_MAX_COMPONENTS.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_debugfs_add_files(%struct.amdgpu_device* %0, %struct.drm_info_list* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.drm_info_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.drm_info_list* %1, %struct.drm_info_list** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %28, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.drm_info_list*, %struct.drm_info_list** %22, align 8
  %24 = load %struct.drm_info_list*, %struct.drm_info_list** %6, align 8
  %25 = icmp eq %struct.drm_info_list* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %68

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @AMDGPU_DEBUGFS_MAX_COMPONENTS, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %68

44:                                               ; preds = %31
  %45 = load %struct.drm_info_list*, %struct.drm_info_list** %6, align 8
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store %struct.drm_info_list* %45, %struct.drm_info_list** %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %55, i32* %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %44, %39, %26
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
