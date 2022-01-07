; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.amdgpu_device = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%p unpin not necessary\0A\00", align 1
@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%p validate failed for unpin\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_bo*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.ttm_operation_ctx, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_bo* %0, %struct.amdgpu_bo** %3, align 8
  %8 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %11)
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %4, align 8
  %13 = bitcast %struct.ttm_operation_ctx* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON_ONCE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %27 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.amdgpu_bo* %26)
  store i32 0, i32* %2, align 4
  br label %87

28:                                               ; preds = %1
  %29 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %87

38:                                               ; preds = %28
  %39 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %40 = call i32 @amdgpu_bo_subtract_pin_size(%struct.amdgpu_bo* %39)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %67, %38
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %41
  %49 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %50 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %59 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %57
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %48
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %41

70:                                               ; preds = %41
  %71 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %71, i32 0, i32 1
  %73 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %74 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %73, i32 0, i32 0
  %75 = call i32 @ttm_bo_validate(%struct.TYPE_5__* %72, %struct.TYPE_6__* %74, %struct.ttm_operation_ctx* %5)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %70
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.amdgpu_bo* %83)
  br label %85

85:                                               ; preds = %79, %70
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %37, %22
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, %struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_subtract_pin_size(%struct.amdgpu_bo*) #1

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.ttm_operation_ctx*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.amdgpu_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
