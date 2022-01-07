; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_bo_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_bo_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Called with userptr BO\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_FENCE_OWNER_KFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_bo*, i32, i32)* @amdgpu_amdkfd_bo_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_amdkfd_bo_validate(%struct.amdgpu_bo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_bo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_operation_ctx, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_bo* %0, %struct.amdgpu_bo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = bitcast %struct.ttm_operation_ctx* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @amdgpu_ttm_tt_get_usermm(i32 %14)
  %16 = call i64 @WARN(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo* %22, i32 %23)
  %25 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %26 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %25, i32 0, i32 1
  %27 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %28 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %27, i32 0, i32 0
  %29 = call i32 @ttm_bo_validate(%struct.TYPE_2__* %26, i32* %28, %struct.ttm_operation_ctx* %8)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %41

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %38 = load i32, i32* @AMDGPU_FENCE_OWNER_KFD, align 4
  %39 = call i32 @amdgpu_bo_sync_wait(%struct.amdgpu_bo* %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %36, %33
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @WARN(i32, i8*) #2

declare dso_local i32 @amdgpu_ttm_tt_get_usermm(i32) #2

declare dso_local i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo*, i32) #2

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_2__*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @amdgpu_bo_sync_wait(%struct.amdgpu_bo*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
