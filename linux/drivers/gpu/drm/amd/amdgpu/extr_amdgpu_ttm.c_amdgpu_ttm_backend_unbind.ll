; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_backend_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_backend_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32, i32 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ttm_tt = type { i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AMDGPU_BO_INVALID_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"failed to unbind %lu pages at 0x%08llX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*)* @amdgpu_ttm_backend_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ttm_backend_unbind(%struct.ttm_tt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_ttm_tt*, align 8
  %6 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  %7 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %8 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %9)
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %4, align 8
  %11 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %12 = bitcast %struct.ttm_tt* %11 to i8*
  %13 = bitcast i8* %12 to %struct.amdgpu_ttm_tt*
  store %struct.amdgpu_ttm_tt* %13, %struct.amdgpu_ttm_tt** %5, align 8
  %14 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %20 = call i32 @amdgpu_ttm_tt_unpin_userptr(%struct.ttm_tt* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %5, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AMDGPU_BO_INVALID_OFFSET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %51

28:                                               ; preds = %21
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %30 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %5, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %34 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @amdgpu_gart_unbind(%struct.amdgpu_device* %29, i64 %32, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %28
  %40 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %5, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %5, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %47)
  br label %49

49:                                               ; preds = %39, %28
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %27
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @amdgpu_ttm_tt_unpin_userptr(%struct.ttm_tt*) #1

declare dso_local i32 @amdgpu_gart_unbind(%struct.amdgpu_device*, i64, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
