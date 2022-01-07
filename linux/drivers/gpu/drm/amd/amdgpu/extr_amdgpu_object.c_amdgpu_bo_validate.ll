; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { i64, i64, i32, i32, i64 }
%struct.ttm_operation_ctx = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_bo_validate(%struct.amdgpu_bo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_bo*, align 8
  %4 = alloca %struct.ttm_operation_ctx, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.amdgpu_bo* %0, %struct.amdgpu_bo** %3, align 8
  %7 = bitcast %struct.ttm_operation_ctx* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %39, %13
  %18 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo* %18, i64 %19)
  %21 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %21, i32 0, i32 3
  %23 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %23, i32 0, i32 2
  %25 = call i32 @ttm_bo_validate(i32* %22, i32* %24, %struct.ttm_operation_ctx* %4)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %17
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %41 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %5, align 8
  br label %17

43:                                               ; preds = %33, %17
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo*, i64) #2

declare dso_local i32 @ttm_bo_validate(i32*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local i64 @unlikely(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
