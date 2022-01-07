; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_unpopulate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_unpopulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32, i32, i32 }
%struct.amdgpu_device = type { i32, i64 }
%struct.amdgpu_ttm_tt = type { i32, i64 }

@TTM_PAGE_FLAG_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_tt*)* @amdgpu_ttm_tt_unpopulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_ttm_tt_unpopulate(%struct.ttm_tt* %0) #0 {
  %2 = alloca %struct.ttm_tt*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ttm_tt*, align 8
  %5 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %2, align 8
  %6 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %7 = bitcast %struct.ttm_tt* %6 to i8*
  %8 = bitcast i8* %7 to %struct.amdgpu_ttm_tt*
  store %struct.amdgpu_ttm_tt* %8, %struct.amdgpu_ttm_tt** %4, align 8
  %9 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %10 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TTM_PAGE_FLAG_SG, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %4, align 8
  %19 = icmp ne %struct.amdgpu_ttm_tt* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %1
  %21 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %27 = call i32 @amdgpu_ttm_tt_set_user_pages(%struct.ttm_tt* %26, i32* null)
  %28 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %29 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kfree(i32 %30)
  %32 = load i32, i32* @TTM_PAGE_FLAG_SG, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %35 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %53

38:                                               ; preds = %20, %1
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %53

42:                                               ; preds = %38
  %43 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %44 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %45)
  store %struct.amdgpu_device* %46, %struct.amdgpu_device** %3, align 8
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %50, i32 0, i32 0
  %52 = call i32 @ttm_unmap_and_unpopulate_pages(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %42, %41, %25
  ret void
}

declare dso_local i32 @amdgpu_ttm_tt_set_user_pages(%struct.ttm_tt*, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @ttm_unmap_and_unpopulate_pages(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
