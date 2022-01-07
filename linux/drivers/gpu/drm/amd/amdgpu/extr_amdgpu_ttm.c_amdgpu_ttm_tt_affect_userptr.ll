; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_affect_userptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_affect_userptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32 }
%struct.amdgpu_ttm_tt = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ttm_tt_affect_userptr(%struct.ttm_tt* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_tt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.amdgpu_ttm_tt*, align 8
  %9 = alloca i64, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ttm_tt*, %struct.ttm_tt** %5, align 8
  %11 = bitcast %struct.ttm_tt* %10 to i8*
  %12 = bitcast i8* %11 to %struct.amdgpu_ttm_tt*
  store %struct.amdgpu_ttm_tt* %12, %struct.amdgpu_ttm_tt** %8, align 8
  %13 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %8, align 8
  %14 = icmp eq %struct.amdgpu_ttm_tt* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %8, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %44

21:                                               ; preds = %15
  %22 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %8, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = mul i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %8, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %21
  %35 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %8, align 8
  %36 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* %6, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %21
  store i32 0, i32* %4, align 4
  br label %44

43:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %42, %20
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
