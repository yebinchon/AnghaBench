; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_set_user_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_set_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64, %struct.page** }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_ttm_tt_set_user_pages(%struct.ttm_tt* %0, %struct.page** %1) #0 {
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.page**, align 8
  %5 = alloca i64, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  store %struct.page** %1, %struct.page*** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %28, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %9 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = load %struct.page**, %struct.page*** %4, align 8
  %14 = icmp ne %struct.page** %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.page**, %struct.page*** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.page*, %struct.page** %16, i64 %17
  %19 = load %struct.page*, %struct.page** %18, align 8
  br label %21

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi %struct.page* [ %19, %15 ], [ null, %20 ]
  %23 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %24 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %23, i32 0, i32 1
  %25 = load %struct.page**, %struct.page*** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.page*, %struct.page** %25, i64 %26
  store %struct.page* %22, %struct.page** %27, align 8
  br label %28

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %5, align 8
  br label %6

31:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
