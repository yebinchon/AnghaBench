; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_get_usermm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_get_usermm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.ttm_tt = type { i32 }
%struct.amdgpu_ttm_tt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mm_struct* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mm_struct* @amdgpu_ttm_tt_get_usermm(%struct.ttm_tt* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.amdgpu_ttm_tt*, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  %5 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %6 = bitcast %struct.ttm_tt* %5 to i8*
  %7 = bitcast i8* %6 to %struct.amdgpu_ttm_tt*
  store %struct.amdgpu_ttm_tt* %7, %struct.amdgpu_ttm_tt** %4, align 8
  %8 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %4, align 8
  %9 = icmp eq %struct.amdgpu_ttm_tt* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.mm_struct* null, %struct.mm_struct** %2, align 8
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp eq %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store %struct.mm_struct* null, %struct.mm_struct** %2, align 8
  br label %23

17:                                               ; preds = %11
  %18 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %4, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.mm_struct*, %struct.mm_struct** %21, align 8
  store %struct.mm_struct* %22, %struct.mm_struct** %2, align 8
  br label %23

23:                                               ; preds = %17, %16, %10
  %24 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  ret %struct.mm_struct* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
