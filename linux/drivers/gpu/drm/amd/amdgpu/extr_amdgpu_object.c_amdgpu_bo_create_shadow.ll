; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_create_shadow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_create_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }
%struct.amdgpu_bo = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_bo_param = type { i64, i32, i32, i32, i32 }

@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_CPU_GTT_USWC = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_SHADOW = common dso_local global i32 0, align 4
@ttm_bo_type_kernel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i64, %struct.amdgpu_bo*)* @amdgpu_bo_create_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_bo_create_shadow(%struct.amdgpu_device* %0, i64 %1, %struct.amdgpu_bo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.amdgpu_bo*, align 8
  %8 = alloca %struct.amdgpu_bo_param, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.amdgpu_bo* %2, %struct.amdgpu_bo** %7, align 8
  %10 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %11 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

15:                                               ; preds = %3
  %16 = call i32 @memset(%struct.amdgpu_bo_param* %8, i32 0, i32 24)
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %8, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %20 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %8, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_GTT_USWC, align 4
  %22 = load i32, i32* @AMDGPU_GEM_CREATE_SHADOW, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %8, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* @ttm_bo_type_kernel, align 4
  %26 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %8, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %28 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %8, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %34 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %35 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %34, i32 0, i32 0
  %36 = call i32 @amdgpu_bo_do_create(%struct.amdgpu_device* %33, %struct.amdgpu_bo_param* %8, %struct.TYPE_6__** %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %15
  %40 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %41 = call i32 @amdgpu_bo_ref(%struct.amdgpu_bo* %40)
  %42 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %43 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %50 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 1
  %55 = call i32 @list_add_tail(i32* %52, i32* %54)
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  br label %59

59:                                               ; preds = %39, %15
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %14
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.amdgpu_bo_param*, i32, i32) #1

declare dso_local i32 @amdgpu_bo_do_create(%struct.amdgpu_device*, %struct.amdgpu_bo_param*, %struct.TYPE_6__**) #1

declare dso_local i32 @amdgpu_bo_ref(%struct.amdgpu_bo*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
