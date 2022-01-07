; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_set_userptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_set_userptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ttm_tt = type { i32 }
%struct.amdgpu_ttm_tt = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ttm_tt_set_userptr(%struct.ttm_tt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_tt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_ttm_tt*, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ttm_tt*, %struct.ttm_tt** %5, align 8
  %10 = bitcast %struct.ttm_tt* %9 to i8*
  %11 = bitcast i8* %10 to %struct.amdgpu_ttm_tt*
  store %struct.amdgpu_ttm_tt* %11, %struct.amdgpu_ttm_tt** %8, align 8
  %12 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %8, align 8
  %13 = icmp eq %struct.amdgpu_ttm_tt* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %43

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %8, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %8, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %8, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %8, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @put_task_struct(i64 %31)
  br label %33

33:                                               ; preds = %28, %17
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %8, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %8, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @get_task_struct(i64 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %33, %14
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @put_task_struct(i64) #1

declare dso_local i32 @get_task_struct(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
