; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_alloc_gws.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_alloc_gws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_bo = type { i32 }
%struct.amdgpu_bo_param = type { i64, i32, i32*, i32, i32, i32 }

@AMDGPU_GEM_DOMAIN_GWS = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_NO_CPU_ACCESS = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to allocate gws BO for amdkfd (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_alloc_gws(%struct.kgd_dev* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kgd_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_bo*, align 8
  %10 = alloca %struct.amdgpu_bo_param, align 8
  %11 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load %struct.kgd_dev*, %struct.kgd_dev** %5, align 8
  %13 = bitcast %struct.kgd_dev* %12 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %9, align 8
  %14 = call i32 @memset(%struct.amdgpu_bo_param* %10, i32 0, i32 40)
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %10, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %10, i32 0, i32 1
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* @AMDGPU_GEM_DOMAIN_GWS, align 4
  %19 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %10, i32 0, i32 5
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @AMDGPU_GEM_CREATE_NO_CPU_ACCESS, align 4
  %21 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %10, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @ttm_bo_type_device, align 4
  %23 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %10, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %10, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %26 = call i32 @amdgpu_bo_create(%struct.amdgpu_device* %25, %struct.amdgpu_bo_param* %10, %struct.amdgpu_bo** %9)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %40

36:                                               ; preds = %3
  %37 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %38 = bitcast %struct.amdgpu_bo* %37 to i8*
  %39 = load i8**, i8*** %7, align 8
  store i8* %38, i8** %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @memset(%struct.amdgpu_bo_param*, i32, i32) #1

declare dso_local i32 @amdgpu_bo_create(%struct.amdgpu_device*, %struct.amdgpu_bo_param*, %struct.amdgpu_bo**) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
